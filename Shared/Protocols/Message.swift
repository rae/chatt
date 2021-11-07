//
//  Message.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-07.
//

import Foundation
import SwiftUI

protocol Message: Hashable {
    var text: String { get }
    var userid: String? { get }
    var avatar: Image? { get }
    var date: Date { get }
    var link: URL? { get }
    var images: [Image] { get }
}

extension Message {
    var username: String { userid ?? "Anonymous" }
}
