//
//  HomeView.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-05.
//

import SwiftUI

struct HomeView: View {
    @State private var selection: String?

    var messages: [MockMessage] = []

    var body: some View {
        NavigationView {
            List(messages, id: \.self, selection: $selection) {
                Text($0.username)
                Text($0.date.description)
                $0.avatar
                Text($0.text)
            }
            .navigationTitle("Home")
            #if os(iOS)
            .toolbar {
                EditButton()
            }
            #endif
        }
        Text("Home view")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(
            messages: [
                MockMessage(
                    text: "A Mock messages test things out!",
                    userid: "tim",
                    avatar: Image(systemName: "person"))
            ]
        )
            .previewLayout(.device)
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone 11")
    }
}
