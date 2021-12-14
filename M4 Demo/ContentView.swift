//
//  ContentView.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import Authentication

struct ContentView: View {
    @EnvironmentObject private var auth: Authentication
    @State private var text = "Wait"
    @State private var tapped = false

    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                    .task {
                        text = auth.isAuthenticated ? "Authenticated" : "Not authenticated"
                    }
                NavigationLink("Home", destination: HomeView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let auth1 = Authentication()
        let auth2 = Authentication(forced: true)
        
        Group {
            ContentView()
                .environmentObject(auth1)
            ContentView()
                .environmentObject(auth2)
        }
    }
}
