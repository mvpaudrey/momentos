//
//  AnimatedMeshGradientBackground.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct AnimatedMeshGradientBackground: View {

    @StateObject private var viewModel = MeshGradientViewModel()

    var body: some View {
        TimelineView(.animation) { phase in
            MeshGradient(
                width: 4,
                height: 4,
                locations: .points(viewModel.animatedPositions(for: phase.date)),
                colors: .colors(viewModel.colors),
                background: Color(hex: "#00264d"),
                smoothsColors: true
            )
        }
        .overlay(content: {
            Color.black.opacity(0.5)
                .ignoresSafeArea()
        })
        .ignoresSafeArea()
    }
}

final class MeshGradientViewModel: ObservableObject {
    let colors: [Color] = [
        Color(hex: "#00264d"), Color(hex: "#004080"), Color(hex: "#0059b3"), Color(hex: "#0073e6"),
        Color(hex: "#1a8cff"), Color(hex: "#4da6ff"), Color(hex: "#80bfff"), Color(hex: "#b3d9ff"),
        Color(hex: "#00ff80"), Color(hex: "#33ff99"), Color(hex: "#66ffb3"), Color(hex: "#99ffcc"),
        Color(hex: "#004d40"), Color(hex: "#00665c"), Color(hex: "#008577"), Color(hex: "#00a693")
    ]

    private let initialPositions: [SIMD2<Float>] = [
        SIMD2<Float>(0.00, 0.00), SIMD2<Float>(0.33, 0.00), SIMD2<Float>(0.67, 0.00), SIMD2<Float>(1.00, 0.00),
        SIMD2<Float>(0.00, 0.33), SIMD2<Float>(0.33, 0.33), SIMD2<Float>(0.67, 0.33), SIMD2<Float>(1.00, 0.33),
        SIMD2<Float>(0.00, 0.67), SIMD2<Float>(0.33, 0.67), SIMD2<Float>(0.67, 0.67), SIMD2<Float>(1.00, 0.67),
        SIMD2<Float>(0.00, 1.00), SIMD2<Float>(0.33, 1.00), SIMD2<Float>(0.67, 1.00), SIMD2<Float>(1.00, 1.00)
    ]

    func animatedPositions(for date: Date) -> [SIMD2<Float>] {
        let phase = CGFloat(date.timeIntervalSince1970)
        var animatedPositions = initialPositions

        // Animate edge points
        animatedPositions[1].x = 0.33 + 0.1 * Float(cos(phase * 0.7))  // Top edge
        animatedPositions[2].x = 0.67 - 0.1 * Float(cos(phase * 0.8))  // Top edge
        animatedPositions[4].y = 0.33 + 0.1 * Float(cos(phase * 0.9))  // Left edge
        animatedPositions[7].y = 0.33 - 0.1 * Float(cos(phase * 0.6))  // Right edge
        animatedPositions[13].x = 0.33 + 0.1 * Float(cos(phase * 1.3)) // Bottom edge
        animatedPositions[14].x = 0.67 - 0.1 * Float(cos(phase * 1.4)) // Bottom edge

        // Animate inner points
        animatedPositions[5].x = 0.33 + 0.1 * Float(cos(phase * 0.8))
        animatedPositions[5].y = 0.33 + 0.1 * Float(cos(phase * 0.9))
        animatedPositions[6].x = 0.67 - 0.1 * Float(cos(phase * 1.0))
        animatedPositions[6].y = 0.33 + 0.1 * Float(cos(phase * 1.1))
        animatedPositions[9].x = 0.33 + 0.1 * Float(cos(phase * 1.2))
        animatedPositions[9].y = 0.67 - 0.1 * Float(cos(phase * 1.3))
        animatedPositions[10].x = 0.67 - 0.1 * Float(cos(phase * 1.4))
        animatedPositions[10].y = 0.67 - 0.1 * Float(cos(phase * 1.5))

        return animatedPositions
    }
}

#Preview {
    AnimatedMeshGradientBackground()
}
