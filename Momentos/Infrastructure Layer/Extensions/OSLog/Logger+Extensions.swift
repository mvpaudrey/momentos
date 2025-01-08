//
//  Logger+Extensions.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import OSLog

extension Logger {
    // swiftlint:disable:next force_unwrapping
    private static let subsystem = Bundle.main.bundleIdentifier!

    static let fileManager = Logger(subsystem: subsystem, category: "fileManager")

    static let photoPicker = Logger(subsystem: subsystem, category: "photoPicker")
}
