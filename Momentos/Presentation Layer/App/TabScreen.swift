//
//  TabScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct TabScreen: View {
    @EnvironmentObject var store: AppStore

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
    TabScreen()
}
