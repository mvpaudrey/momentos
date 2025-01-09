//
//  SettingsEntryLine.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import SwiftUI

struct SettingsEntryLine: View {

    let systemImage: String
    let title: String

    var body: some View {
        Label(title, systemImage: systemImage)
    }
}

#Preview {
    SettingsEntryLine(systemImage: "gear", title: "Tools")
}
