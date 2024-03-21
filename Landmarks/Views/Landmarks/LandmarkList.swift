//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Chinh on 3/13/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData  // The @Environment property wrapper enables you to read the model data of the current view.
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
//        You add navigation capabilities to a list by embedding it in a NavigationSplitView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.
        NavigationSplitView {
            List {
                // You use the $ prefix to access a binding to a state variable, or one of its properties.
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())   // The modelData property gets its value automatically, as long as the environment(_:) modifier has been applied to a parent.
}
