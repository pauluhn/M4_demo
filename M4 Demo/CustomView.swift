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
            .environmentObject(AccountInfo())
    }

    private struct ContentView: View {
        @EnvironmentObject private var appState: M4AppState
        @EnvironmentObject private var accountInfo: AccountInfo

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
                Text(accountInfo.name)
                HStack {
                    Button {
                        accountInfo.start()
                    } label: {
                        Text("Start")
                    }
                    Button {
                        accountInfo.stop()
                    } label: {
                        Text("Stop")
                    }
                }
                Button {
                    withAnimation {
                        appState.selection = 0
                    }
                } label: {
                    Text("Change")
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
