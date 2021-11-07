//
//  HomeView.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-05.
//

import SwiftUI

struct HomeView: View {
    var messages: [MockMessage] = [
        MockMessage(
            text: "A Mock messages test things out!",
            userid: "tim",
            avatar: Image(systemName: "person")
        )
    ]

    var body: some View {
        NavigationView {
            MessageView(messages: messages)
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
                    avatar: Image(systemName: "person")
                )
            ]
        )
    }
}
