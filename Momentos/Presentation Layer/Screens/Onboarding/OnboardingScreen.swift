//
//  OnboardingScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct OnboardingScreen: View {

    @AppStorage("isOnboarding") var isOnboarding = true
    @StateObject private var viewModel = OnboardingViewModel()

    var body: some View {
        ZStack {
            AnimatedMeshGradientBackground()

            VStack(spacing: 30) {
                Spacer()

                OnboardingTitleView(offset: $viewModel.titleOffset, opacity: $viewModel.titleOpacity)

                Spacer()

                AnimatedFeatureGrid()

                Spacer()

                GetStartedButton(scale: $viewModel.buttonScale, opacity: $viewModel.buttonOpacity) {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        isOnboarding = false
                    }
                }
            }
            .padding()
        }
        .onAppear(perform: viewModel.onAppear)
    }
}

#Preview {
    OnboardingScreen()
}
