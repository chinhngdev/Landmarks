//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Chinh on 3/14/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()    // A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)    // When you apply a Modifier function to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
