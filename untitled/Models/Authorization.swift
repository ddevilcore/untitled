//
//  Authorization.swift
//  untitled
//
//  Created by Artem on 09.05.2021.
//

import SwiftUI

struct Authorization: Equatable {
    var userName: String
    var password: String
    var passwordsMatch: Bool
    
    init() {
        self.userName = ""
        self.password = ""
        self.passwordsMatch = false
    }
}
