//
//  CustomView.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        ContentView()
            .tabItem {
                Label("Custom", systemImage: "folder")
            }
    }

    private struct ContentView: View {
        var body: some View {
            VStack {
                Text("Menu")
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
