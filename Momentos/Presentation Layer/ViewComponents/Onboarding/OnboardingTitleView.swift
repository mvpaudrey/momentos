//
//  OnboardingTitleView.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct OnboardingTitleView: View {
    @Binding var offset: CGFloat
    @Binding var opacity: Double

    var body: some View {
        Text("Happy \nTesting!")
            .font(.system(size: 48))
            .fontWidth(.expanded)
            .fontWeight(.heavy)
            .foregroundStyle(.white.gradient)
            .multilineTextAlignment(.center)
            .offset(y: offset)
            .opacity(opacity)
            .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    OnboardingTitleView(offset: .constant(-50), opacity: .constant(0))
}
