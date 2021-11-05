//
//  ContentView.swift
//  Shared
//
//  Created by Reid Ellis on 2021-11-05.
//

import SwiftUI

struct ContentView: View {
    @State var user: User = ActivityPubUser()
    var body: some View {
        switch user.state {
        case .onboarding:
            OnboardingView()
        case .loggedOut:
            LoginView()
        default:
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
