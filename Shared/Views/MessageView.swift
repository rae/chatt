//
//  MessageView.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-07.
//

import Foundation
import SwiftUI

extension Message {
    var formattedDate: String { " [" + date.description + "]" }
}

struct MessageView: View {
    @State var messages: [MockMessage]
    @State private var selection: String?
    var body: some View {
        List(messages, id: \.self, selection: $selection) { message in
            HStack(alignment: .firstTextBaseline, spacing: 10) {
                message.avatar
                Text(message.username)
                Text(message.formattedDate)
                    .font(.caption)
            }
            Text(message.text)
        }
        .navigationTitle("Home")
#if os(iOS)
        .toolbar {
            EditButton()
        }
#endif
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(
            messages: [
                MockMessage(
                    text: "A Mock messages test things out!",
                    userid: "tim",
                    avatar: Image(systemName: "person")
                )
            ]
        )
        Text("date")
            .font(.caption)
    }
}
