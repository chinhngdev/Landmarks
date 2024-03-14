//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Chinh on 3/13/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
//         Trước khi Landmark conform Identifiable protocol
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
//         Sau khi Landmark conform Identifiable protocol
//        You add navigation capabilities to a list by embedding it in a NavigationSplitView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
