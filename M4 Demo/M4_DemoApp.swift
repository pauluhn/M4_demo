//
//  M4_DemoApp.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import M4
import Authentication

@main
struct M4_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(M4AppState())
                .environmentObject(Authentication())
        }
    }
}
