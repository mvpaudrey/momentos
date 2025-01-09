//
//  GetStartedButton.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct GetStartedButton: View {

    @Binding var scale: CGFloat
    @Binding var opacity: Double
    let action: () -> Void

    var body: some View {
        AnimatedButton(text: "Show Prototype", action: action)
            .scaleEffect(scale)
            .opacity(opacity)
    }
}

#Preview {
    GetStartedButton(scale: .constant(0.8), opacity: .constant(0), action: {})
}
