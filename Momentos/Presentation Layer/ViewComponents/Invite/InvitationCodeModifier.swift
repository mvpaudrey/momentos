//
//  InvitationCodeModifier.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import Combine
import SwiftUI

struct InvitationCodeModifier: ViewModifier {

    @Binding var code: String

    var textLimit = 1

    func limitText(_ upper: Int) {
        if code.count > upper {
            self.code = String(code.prefix(upper))
        }
    }

    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .onReceive(Just(code)) { _ in
                limitText(textLimit)
            }
            .frame(width: 45, height: 45)
            .background(Color.white.cornerRadius(5))
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.blue, lineWidth: 2)
            )
    }
}
