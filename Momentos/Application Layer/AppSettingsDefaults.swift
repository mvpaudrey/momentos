//
//  AppSettingsDefaults.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

struct AppSettingsDefaults: AppSettingsStore {
    var userDefaults: UserDefaults

    init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }

    var userOnboarded: Bool {
        get { return value(for: AppSettingsKeys.userOnboarded.rawValue) ?? false }
        set { updateDefaults(for: AppSettingsKeys.userOnboarded.rawValue, value: newValue) }
    }

    var hasSuccessfullyEnterInvitationCode: Bool {
        get { return value(for: AppSettingsKeys.hasSuccessfullyEnterInvitationCode.rawValue) ?? false }
        set { updateDefaults(for: AppSettingsKeys.hasSuccessfullyEnterInvitationCode.rawValue, value: newValue) }
    }
}

// MARK: Private methods

extension AppSettingsDefaults {

    private func updateDefaults(for key: String, value: Any) {
        userDefaults.set(value, forKey: key)
    }

    private func value<T>(for key: String) -> T? {
        return userDefaults.value(forKey: key) as? T
    }

}
