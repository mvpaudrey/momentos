//
//  URL+isImage.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation

extension URL {
    /// Indicates whether the URL has a file extension corresponding to a common image format.
    var isImage: Bool {
        let imageExtensions = ["jpg", "jpeg", "png", "gif", "heic"]
        return imageExtensions.contains(self.pathExtension)
    }
}
