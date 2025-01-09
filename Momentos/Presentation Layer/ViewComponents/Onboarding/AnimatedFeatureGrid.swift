//
//  AnimatedFeatureGrid.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct AnimatedFeatureGrid: View {
    let features = Feature.allFeatures

    let columns = [
        // GridItem(.adaptive(minimum: 80))
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(features, id: \.self) { item in
                    AnimatedFeatureCard(feature: item, delay: 0)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 400)
    }

}

#Preview {
    AnimatedFeatureGrid()
}
