//
//  FeedScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import SwiftUI

struct FeedScreen: View {

    @State var sharedPhotos: [SharedPhoto] = []

    var body: some View {

        NavigationStack {
            ScrollView {
                VStack {
                    listHeaderView

                    ForEach(sharedPhotos, id: \.self) { sharedPhoto in
                        NavigationLink(value: sharedPhoto) {
                            FeedItemView(sharedPhoto: sharedPhoto)
                                .padding(.bottom)
                        }
                    }
                }
                .padding()
                /*.navigationDestination(for: SharedPhoto.self) { sharedPhoto in
                    ThreadChatView(thread: sharedPhoto.chatThread)
                }*/
            }
        }
    }

    @ViewBuilder
    private var listHeaderView: some View {
        HStack {
            Spacer()

            NavigationLink {
                SharePhotoView { image in
                    sharedPhotos.append(
                        SharedPhoto(authorName: SettingsUser.mockUser.name, contentSource: .image(image))
                                    // chatThread: Thread())
                    )
                }
            } label: {
                Image(systemName: "plus")
                    .font(.title)
            }
        }
        .padding()
    }
}

struct FeedItemView: View {

    let sharedPhoto: SharedPhoto

    var body: some View {
        VStack {
            switch sharedPhoto.contentSource {
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
                Text("Photo shared by " + sharedPhoto.authorName)
                Spacer()
                // Label("\(sharedPhoto.chatThread.messages.count) messages", systemImage: "message")
            }
            .font(.caption)
            .foregroundStyle(.gray)
        }
        .padding(.horizontal)
    }
}

#Preview {
    FeedScreen()
        .environmentObject(
            AppStore(initialState: AppState(userOnboarded: true,
                                            hasSuccessfullyEnterInvitationCode: false
                                           )
            )
        )
}
