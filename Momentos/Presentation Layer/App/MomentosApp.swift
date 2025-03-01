//
//  MomentosApp.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 07/01/2025.
//

import SwiftUI

@main
struct MomentosApp: App {

    private let store = AppStore(initialState: AppState())

    var body: some Scene {
        WindowGroup {
            RootScreen()
                .environmentObject(store)
        }
    }
}
