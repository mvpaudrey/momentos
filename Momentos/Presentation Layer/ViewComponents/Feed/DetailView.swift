//
//  DetailView.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct DetailView: View {
    let item: PickerItem

    var body: some View {
        AsyncImage(url: item.url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg")!
    DetailView(item: PickerItem(url: url))
}
