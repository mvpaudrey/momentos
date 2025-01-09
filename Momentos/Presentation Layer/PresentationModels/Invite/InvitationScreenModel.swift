//
//  InvitationScreenModel.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Combine
import Foundation

@MainActor
final class InvitationScreenModel: ObservableObject {

    @Published var isCodeInviteValid: Bool = false

    func validateCode(_ code: String) {
        if code == "1234" {
            isCodeInviteValid = true
        }
    }
}
