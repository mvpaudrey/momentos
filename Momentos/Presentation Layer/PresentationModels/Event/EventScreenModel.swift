//
//  EventScreenModel.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

@MainActor
final class EventScreenModel: ObservableObject {

    var imageService = UnsplashService()
    @Published var events: [ViewEvent] = []

    func load() async {
        let stringUrls = await imageService.getFeaturedPhotos()
        let urls = stringUrls.map { URL(string: $0)! }
        events = urls.map {
            ViewEvent(authorName: SettingsUser.mockUser.name, contentSource: .url($0))
        }
    }
}
