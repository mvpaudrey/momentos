//
//  RootScreenModel.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Combine
import Foundation

final class RootScreenModel: ObservableObject {

    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    @Published var hasBeenOnboarded = false
}
