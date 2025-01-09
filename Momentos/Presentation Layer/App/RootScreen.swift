//
//  RootScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 07/01/2025.
//

import SwiftUI

struct RootScreen: View {

    @AppStorage("isOnboarding") var isOnboarding = true
    @AppStorage("hasSuccessfullyEnterInvitationCode") var hasSuccessfullyEnterInvitationCode = false

    var body: some View {
        NavigationStack {
            if isOnboarding {
                OnboardingScreen()
            } else {
                if hasSuccessfullyEnterInvitationCode {
                    TabScreen()
                } else {
                    InvitationScreen()
                }
            }
        }
    }
}

#Preview {
    RootScreen()
}
