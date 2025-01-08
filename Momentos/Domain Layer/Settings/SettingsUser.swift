//
//  SettingsUser.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation

struct SettingsUser: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let isSelf: Bool

    static var mockUser: SettingsUser {
        SettingsUser(name: "Drey", photo: "drey", isSelf: true)
    }
}
