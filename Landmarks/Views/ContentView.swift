//
//  ContentView.swift
//  Landmarks
//
//  Created by Chinh on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

//  creates a preview for ContentView.
#Preview {
    ContentView()
        .environment(ModelData())
}
