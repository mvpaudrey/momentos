//
//  InvitationScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct InvitationScreen: View {

    @AppStorage("hasSuccessfullyEnterInvitationCode") var hasSuccessfullyEnterInvitationCode = false

    @FocusState private var codeFocusState: FocusCode?
    @State var codeOne: String = ""
    @State var codeTwo: String = ""
    @State var codeThree: String = ""
    @State var codeFour: String = ""

    @StateObject var model = InvitationScreenModel()

    var body: some View {
        VStack {
            Text("Event Invitation Code")
                .font(.title2)
                .fontWeight(.semibold)

            Text("Enter code `1 2 3 4` code to validate the invite")
                .font(.caption)
                .fontWeight(.bold)
                .padding(.top)

            Text("Enter 4 digit code we'll text you on Email")
                .font(.caption)
                .fontWeight(.thin)
                .padding(.top)

            HStack(spacing: 15, content: {

                TextField("", text: $codeOne)
                    .modifier(InvitationCodeModifier(code: $codeOne))
                    .onChange(of: codeOne) { _, newValue in
                        if newValue.count == 1 {
                            codeFocusState = .two
                        }
                    }
                    .focused($codeFocusState, equals: .one)

                TextField("", text: $codeTwo)
                    .modifier(InvitationCodeModifier(code: $codeTwo))
                    .onChange(of: codeTwo) { _, newValue in
                        if newValue.count == 1 {
                            codeFocusState = .three
                        } else {
                            if newValue.isEmpty {
                                codeFocusState = .one
                            }
                        }
                    }
                    .focused($codeFocusState, equals: .two)

                TextField("", text: $codeThree)
                    .modifier(InvitationCodeModifier(code: $codeThree))
                    .onChange(of: codeThree) { _, newValue in
                        if newValue.count == 1 {
                            codeFocusState = .four
                        } else {
                            if newValue.isEmpty {
                                codeFocusState = .two
                            }
                        }
                    }
                    .focused($codeFocusState, equals: .three)

                TextField("", text: $codeFour)
                    .modifier(InvitationCodeModifier(code: $codeFour))
                    .onChange(of: codeFour) { _, newValue in
                        if newValue.isEmpty {
                            codeFocusState = .three
                        }
                    }
                    .focused($codeFocusState, equals: .four)
            })
            .padding(.vertical)

            Spacer()
                .frame(maxHeight: 100)

            Button(action: {
                let code = codeOne + codeTwo + codeThree + codeFour
                model.validateCode(code)
            }, label: {
                Spacer()
                Text("Join")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Spacer()
            })
            .padding(.vertical, 15)
            .background(Color.blue)
            .clipShape(Capsule())
            .padding(.horizontal, 30)
        }
        .onChange(of: model.isCodeInviteValid) { _, newValue in
            if newValue == true {
                hasSuccessfullyEnterInvitationCode = newValue
            }
        }
    }
}

#Preview {
    InvitationScreen()
}
