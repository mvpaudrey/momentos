//
//  AnimatedFeatureCard.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct AnimatedFeatureCard: View {

    let feature: Feature
    let delay: Double

    @State private var opacity: Double = 0
    @State private var offset: CGFloat = 50

    var body: some View {
        FeatureCard(feature: feature)
            .opacity(opacity)
            .offset(y: offset)
            .onAppear {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8).delay(delay)) {
                    opacity = 1
                    offset = 0
                }
            }
    }
}

struct FeatureCard: View {
    let feature: Feature

    var body: some View {
        HStack {
            Image(systemName: feature.icon)
                .font(.largeTitle)
                .frame(minWidth: 50)

            VStack(alignment: .leading) {
                Text(feature.title)
                    .font(.title3)
                    .bold()

                Text(feature.description)
                    .font(.subheadline)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Spacer()
        }
        .foregroundStyle(.white.gradient)
        .padding()
        .cornerRadius(15)
    }
}

#Preview {
    AnimatedFeatureCard(
        feature: Feature.allFeatures[1],
        delay: 0.5
    )
}
