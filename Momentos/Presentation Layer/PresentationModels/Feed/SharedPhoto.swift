//
//  SharedPhoto.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation
import SwiftUI

struct SharedPhoto: Identifiable {
    let id = UUID()
    let authorName: String
    let contentSource: ContentSource
    // let chatThread: Thread

    enum ContentSource {
        case url(URL)
        case image(Image)
        case embeddedAsset(String)
    }
}

extension SharedPhoto: Hashable {
    func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }

    static func == (lhs: SharedPhoto, rhs: SharedPhoto) -> Bool {
        lhs.id == rhs.id
    }
}
