//
//  ActivityPubUser.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-05.
//

import Foundation

struct ActivityPubUser: User {
    var state: UserState = .loggedIn
    var userid: String? = "rando"
    var name: String? = "Samantha Jones"
}
