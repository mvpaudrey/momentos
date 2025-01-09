//
//  GridItemView.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct GridItemView: View {
    let size: Double
    let item: PickerItem

    var body: some View {
        ZStack(alignment: .topTrailing) {
            AsyncImage(url: item.url) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: size, height: size)
        }
    }
}

#Preview {
    let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg")!
    GridItemView(size: 50, item: PickerItem(url: url))
}
