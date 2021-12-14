//
//  Overview.swift
//  
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI

public struct OverviewUI: View {
    public init() {}
    public var body: some View {
        Text("Overview")
            .tabItem {
                Label("Home", systemImage: "house")
            }
    }
}

public class Overview {
    
}

struct OverviewUI_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            OverviewUI()
        }
    }
}
