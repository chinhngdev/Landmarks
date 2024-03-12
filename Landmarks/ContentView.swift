//
//  ContentView.swift
//  Landmarks
//
//  Created by Chinh on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()    // A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)    // When you apply a Modifier function to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

//  creates a preview for ContentView.
#Preview {
    ContentView()
}
