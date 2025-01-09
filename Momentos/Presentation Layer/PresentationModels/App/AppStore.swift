//
//  AppStore.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Combine
import Foundation

typealias AppStore = Store<AppState>

@MainActor
final class Store<State>: ObservableObject {

    @Published private(set) var state: State

    private var cancellables: Set<AnyCancellable> = []

    init(initialState: State) {
        self.state = initialState
    }
}
