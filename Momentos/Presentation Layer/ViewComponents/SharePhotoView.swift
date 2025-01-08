//
//  SharePhotoView.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import PhotosUI
import SwiftUI

struct SharePhotoView: View {

    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    let completionAction: (Image) -> Void
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Share")
                .font(.title)

            Spacer()

            PhotosPicker("Pick a picture", selection: $pickerItem, matching: .images)

            selectedImage?
                .resizable()
                .scaledToFit()
                .padding()

            Spacer()

            Button {
                guard let selectedImage = selectedImage else { return }
                completionAction(selectedImage)
                dismiss()
            } label: {
                Text("Share to friends")
            }
            .buttonStyle(BorderedButtonStyle())
            .padding()
            .disabled(selectedImage == nil)

        }
        .onChange(of: pickerItem) {
            Task {
                selectedImage = try await pickerItem?.loadTransferable(type: Image.self)
            }
        }
    }
}

#Preview {
    SharePhotoView { _ in }
}
