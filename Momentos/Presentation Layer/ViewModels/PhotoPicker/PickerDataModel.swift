//
//  PickerDataModel.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import Foundation

@MainActor
final class PickerDataModel: ObservableObject {

    @Published var items: [PickerItem] = []

    init() {
        if let documentDirectory = FileManager.default.documentDirectory {
            let urls = FileManager.default.getContentsOfDirectory(documentDirectory).filter { $0.isImage }
            for url in urls {
                let item = PickerItem(url: url)
                items.append(item)
            }
        }

        if let urls = Bundle.main.urls(forResourcesWithExtension: "jpg", subdirectory: nil) {
            for url in urls {
                let item = PickerItem(url: url)
                items.append(item)
            }
        }
    }

    /// Adds an item to the data collection.
    func addItem(_ item: PickerItem) {
        items.insert(item, at: 0)
    }

    /// Removes an item from the data collection.
    func removeItem(_ item: PickerItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
            FileManager.default.removeItemFromDocumentDirectory(url: item.url)
        }
    }
}
