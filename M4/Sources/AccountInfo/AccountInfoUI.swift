//
//  AccountInfoUI.swift
//  
//
//  Created by Paul U on 12/14/21.
//

import SwiftUI
import Combine

public struct AccountInfoUI: View {
    public init() {}
    public var body: some View {
        Text("Account")
    }
}

public class AccountInfo: ObservableObject {
    public init() {}
    @Published public var name = "My name"

    private let timer = Timer.publish(every: 1, on: .main, in: .default)
        .autoconnect()
    private var cancellable = Set<AnyCancellable>()

    public func start() {
        timer
            .sink { _ in
                self.name = UUID().uuidString
            }
            .store(in: &cancellable)
    }

    public func stop() {
        cancellable.removeAll()
    }
}

struct AccountInfoUI_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoUI()
    }
}
