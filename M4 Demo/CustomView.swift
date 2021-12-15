//
//  CustomView.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import AccountInfo
import M4

struct CustomView: View {
    var body: some View {
        ContentView()
            .tabItem {
                Label("Custom", systemImage: "folder")
            }
    }

    private struct ContentView: View {
        @EnvironmentObject var appState: M4AppState

        var body: some View {
            VStack {
                Text("Menu")
                AccountInfoUI()
                Text(appState.mojio)
                Button {
                    appState.mojio = UUID().uuidString
                } label: {
                    Text("Change mojio")
                }

            }
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            CustomView()
        }
    }
}
