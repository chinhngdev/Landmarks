//
//  MapView.swift
//  Landmarks
//
//  Created by Chinh on 3/12/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        .init(
            center: .init(
                latitude: 34.011286,
                longitude: -116.166868
            ),
            span: .init(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview {
    MapView()
}
