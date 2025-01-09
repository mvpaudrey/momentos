//
//  AppStateStore.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

enum AppStateKeys: String {
    case userOnboarded
    case hasSuccessfullyEnterInvitationCode
}

protocol AppStateStore {
    var userDefaults: UserDefaults { get set }
    var userOnboarded: Bool { get set }
    var hasSuccessfullyEnterInvitationCode: Bool { get set }
}
