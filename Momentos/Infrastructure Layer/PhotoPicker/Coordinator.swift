//
//  Coordinator.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import os
import PhotosUI
import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, PHPickerViewControllerDelegate {
    let parent: PhotoPicker

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {

        self.parent.dismiss()

        guard
            let result = results.first,
            result.itemProvider.hasItemConformingToTypeIdentifier(UTType.image.identifier)
        else { return }

        // Load a file representation of the picked item.
        // This creates a temporary file which is then copied to the app’s document directory for persistent storage.
        result.itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.image.identifier) { url, error in
            if let error = error {
                Logger.photoPicker.error("Error loading file representation: \(error.localizedDescription)")
            } else if let url = url {
                if let savedUrl = FileManager.default.copyItemToDocumentDirectory(from: url) {
                    Task { @MainActor [dataModel = self.parent.dataModel] in
                        withAnimation {
                            let item = PickerItem(url: savedUrl)
                            dataModel.addItem(item)
                        }
                    }
                }
            }
        }
    }

    init(_ parent: PhotoPicker) {
        self.parent = parent
    }
}
