//
//  FeedEventScreen.swift
//  Momentos
//
//  Created by Audrey SOBGOU on 08/01/2025.
//

import SwiftUI

struct FeedEventScreen: View {

    @StateObject var dataModel = PickerDataModel()

    var body: some View {
        NavigationStack {
            GridView()
        }
        .environmentObject(dataModel)
    }
}

#Preview {
    FeedEventScreen()
}
