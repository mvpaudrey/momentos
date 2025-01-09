//
//  AppStateDefaults.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

struct AppStateDefaults: AppStateStore {
    var userDefaults: UserDefaults

    init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }

    var userOnboarded: Bool {
        get { return value(for: AppStateKeys.userOnboarded.rawValue) ?? false }
        set { updateDefaults(for: AppStateKeys.userOnboarded.rawValue, value: newValue) }
    }

    var hasSuccessfullyEnterInvitationCode: Bool {
        get { return value(for: AppStateKeys.hasSuccessfullyEnterInvitationCode.rawValue) ?? false }
        set { updateDefaults(for: AppStateKeys.hasSuccessfullyEnterInvitationCode.rawValue, value: newValue) }
    }
}

// MARK: Private methods

extension AppStateDefaults {

    private func updateDefaults(for key: String, value: Any) {
        userDefaults.set(value, forKey: key)
    }

    private func value<T>(for key: String) -> T? {
        return userDefaults.value(forKey: key) as? T
    }

}
