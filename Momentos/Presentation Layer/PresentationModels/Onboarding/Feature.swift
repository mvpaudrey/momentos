//
//  Feature.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Foundation

struct Feature: Identifiable, Hashable {
    let id = UUID()
    let icon: String
    let title: String
    let description: String

    static let allFeatures = [
        Feature(
            icon: "paintpalette",
            title: "Create Gradients",
            description: "Onboarding screen logic designed with mesh gradients"
        ),
        Feature(
            icon: "calendar",
            title: "Join friends events",
            description: "Find the event by joining with invitation code"
        ),
        Feature(
            icon: "photo.on.rectangle",
            title: "Contribute",
            description: "Add images to the event album or just look at them"
        ),
        Feature(
            icon: "square.and.arrow.up",
            title: "Export & Share",
            description: "Share the event so that other can contribute"
        )
    ]
}
