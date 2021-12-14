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

    var body: some View {
        Text(text)
            .padding()
            .task {
                text = auth.isAuthenticated ? "yes" : "no"
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
