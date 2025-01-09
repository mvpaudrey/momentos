//
//  RootScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 07/01/2025.
//

import SwiftUI

struct RootScreen: View {

    @AppStorage("isOnboarding") var isOnboarding = true

    @EnvironmentObject var store: AppStore

    var body: some View {
        NavigationStack {
            if isOnboarding {
                OnboardingScreen()
            } else {
                TabScreen()
                    .environmentObject(store)
            }
        }
    }
}

#Preview {
    RootScreen()
}
