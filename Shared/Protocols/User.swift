//
//  UserProtocol.swift
//  Chatt
//
//  Created by Reid Ellis on 2021-11-05.
//

import Foundation

enum UserState {
    /// running app for the first time
    case onboarding
    /// logged out
    case loggedOut
    /// logged in
    case loggedIn
    /// in the process of logging in
    case loggingIn
    /// in the process of logging out
    case loggingOut
    /// was logged in before and needs to log in automatically
    case returning
}

protocol User {
    var state: UserState { get set }
    var userid: String? { get set }
    var name: String? { get set }
}
