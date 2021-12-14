//
//  Authentication.swift
//  
//
//  Created by Paul U on 12/14/21.
//

import Foundation

public class Authentication: ObservableObject {
    @Published public private(set) var isAuthenticated = false

    public init(forced: Bool = false) { isAuthenticated = forced }

    public func signUp(token: String) async -> String? {
        guard token == "123" else { return nil }
        return "abc"
    }

    public func signIn(token: String) async -> Bool {
        guard token == "abc" else { return false }
        defer { isAuthenticated = true }
        return true
    }

    public func logOut() async -> Bool {
        guard isAuthenticated else { return false }
        defer { isAuthenticated = false }
        return true
    }
}
