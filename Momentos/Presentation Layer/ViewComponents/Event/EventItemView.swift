//
//  EventItemView.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct EventItemView: View {

    let sharedEvent: ViewEvent

    var body: some View {
        VStack {
            switch sharedEvent.contentSource {
            case .url(let url):
                AsyncImage(url: url)
                    .frame(width: 350, height: 300)
                    .clipShape(.rect(cornerRadius: 20))
            case .image(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 300)
                    .clipShape(.rect(cornerRadius: 20))
            case .embeddedAsset(let string):
                Image(string)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 300)
                    .clipShape(.rect(cornerRadius: 20))
            }

            HStack {
                Text("Event shared by " + sharedEvent.authorName)
                Spacer()
            }
            .font(.caption)
            .foregroundStyle(.gray)
        }
        .padding(.horizontal)
    }
}

#Preview {
    EventItemView(sharedEvent: ViewEvent(
        authorName: "Drey",
        contentSource: .url(URL(string: "https://picsum.photos/seed/picsum/200/300")!))
    )
}
