//
//  EventScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 09/01/2025.
//

import SwiftUI

struct EventScreen: View {

    @StateObject var model = EventScreenModel()

    var body: some View {

        NavigationStack {
            ScrollView {
                VStack {
                    listHeaderView

                    ForEach(model.events, id: \.self) { event in
                        NavigationLink {
                            FeedEventScreen()
                        } label: {
                            EventItemView(sharedEvent: event)
                        }
                    }
                }
                .padding()
                .navigationDestination(for: PickerItem.self) { _ in
                    FeedEventScreen()
                }
            }
        }
        .task {
            await model.load()
        }
    }

    @ViewBuilder
    private var listHeaderView: some View {
        HStack {
            Spacer()

            NavigationLink {
                Text("Adding new event not implemented")
            } label: {
                Image(systemName: "plus")
                    .font(.title)
            }
        }
        .padding()
    }
}

#Preview {
    EventScreen()
}
