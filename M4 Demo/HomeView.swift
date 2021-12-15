//
//  HomeView.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import Overview
import M4

struct HomeView: View {
    @EnvironmentObject private var appState: M4AppState

//    let views = [Overview(), CustomView()]

    var body: some View {
        TabView(selection: $appState.selection) {
            OverviewUI().tag(0)
            CustomView().tag(1)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
