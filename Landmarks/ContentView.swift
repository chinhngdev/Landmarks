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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()    // A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.

                    Text("California")
                        .font(.subheadline)
                }
            }
        }
        .padding()
    }
}

//  creates a preview for ContentView.
#Preview {
    ContentView()
}
