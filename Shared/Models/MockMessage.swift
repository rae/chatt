//
//  MockMessage.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-07.
//

import Foundation
import SwiftUI

struct MockMessage: Message {
    var text = ""
    var userid: String?
    var avatar: Image?
    var date = Date()
    var link: URL?
    var images: [Image] = []
}

extension MockMessage {
    static func == (lhs: MockMessage, rhs: MockMessage) -> Bool {
        return lhs.date == rhs.date && lhs.text == rhs.text
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(text)
        hasher.combine(date)
    }
}
