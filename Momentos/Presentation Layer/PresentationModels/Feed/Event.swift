//
//  ViewEvent.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation
import SwiftUI

struct ViewEvent: Identifiable {
    let id = UUID()
    let authorName: String
    let contentSource: ContentSource

    enum ContentSource {
        case url(URL)
        case image(Image)
        case embeddedAsset(String)
    }
}

extension ViewEvent: Hashable {
    func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }

    static func == (lhs: ViewEvent, rhs: ViewEvent) -> Bool {
        lhs.id == rhs.id
    }
}
