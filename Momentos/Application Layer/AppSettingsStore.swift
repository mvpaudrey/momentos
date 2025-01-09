//
//  AppSettingsStore.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

enum AppSettingsKeys: String {
    case userOnboarded
    case hasSuccessfullyEnterInvitationCode
}

protocol AppSettingsStore {
    var userDefaults: UserDefaults { get set }
    var hasSuccessfullyEnterInvitationCode: Bool { get set }
    var userOnboarded: Bool { get set }
}
