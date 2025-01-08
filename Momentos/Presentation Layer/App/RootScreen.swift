//
//  RootScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 07/01/2025.
//

import SwiftUI

struct RootScreen: View {
    var body: some View {
        TabView {
            FeedScreen()
                .tabItem {
                    Image(systemName: "house")
                }

            SettingsScreen()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
}

#Preview {
    RootScreen()
}
