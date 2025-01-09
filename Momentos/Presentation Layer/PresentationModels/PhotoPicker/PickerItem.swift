//
//  PickerItem.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation

struct PickerItem: Identifiable, Hashable {
    let id = UUID()
    let url: URL
}

extension PickerItem: Equatable {
    static func == (lhs: PickerItem, rhs: PickerItem) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
