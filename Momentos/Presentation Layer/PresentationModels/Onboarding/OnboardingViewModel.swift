//
//  OnboardingViewModel.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Combine
import CoreFoundation
import SwiftUI

@MainActor
final class OnboardingViewModel: ObservableObject {

    @Published var titleOffset: CGFloat = -50
    @Published var titleOpacity: Double = 0
    @Published var buttonScale: CGFloat = 0.8
    @Published var buttonOpacity: Double = 0

    func onAppear() {
        withAnimation(.spring(response: 0.8, dampingFraction: 0.7).delay(0.3)) {
            titleOffset = 0
            titleOpacity = 1
        }

        withAnimation(.spring(response: 0.6, dampingFraction: 0.7).delay(0.9)) {
            buttonScale = 1
            buttonOpacity = 1
        }
    }
}
