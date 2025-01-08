//
//  SettingsScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        Form {
            Section {
                // swiftlint:disable:next force_unwrapping
                Image(uiImage: UIImage(named: SettingsUser.mockUser.photo)!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 40)
                    .containerRelativeFrame(.horizontal)
                    .clipShape(.circle)
                HStack {
                    Spacer()
                    Text(SettingsUser.mockUser.name)
                        .font(.title)
                    Spacer()
                }
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)

            Section {
                SettingsEntryLine(systemImage: "person", title: "Edit profile")
                SettingsEntryLine(systemImage: "person.slash.fill", title: "Blocked users")
            }

            Section {
                SettingsEntryLine(systemImage: "square.and.arrow.up", title: "Share the app")
                SettingsEntryLine(systemImage: "star.bubble", title: "Rate the app")
                SettingsEntryLine(systemImage: "envelope", title: "Contact us")
            }

            Section {
                SettingsEntryLine(systemImage: "shield", title: "Privacy policy")
                SettingsEntryLine(systemImage: "doc", title: "Terms")
            }

            Section {
                SettingsEntryLine(systemImage: "power", title: "Log out")
                SettingsEntryLine(systemImage: "trash", title: "Delete account")
            }
        }
    }
}

#Preview {
    SettingsScreen()
}
