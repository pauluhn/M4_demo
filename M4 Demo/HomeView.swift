//
//  HomeView.swift
//  M4 Demo
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import Overview

struct HomeView: View {
    var body: some View {
        TabView {
            OverviewUI()
            CustomView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
