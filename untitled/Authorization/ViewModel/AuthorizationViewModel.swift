//
//  AuthorizationViewModel.swift
//  untitled
//
//  Created by Artem on 09.05.2021.
//

import SwiftUI
import Combine

class AuthorizationViewModel: ObservableObject {
    private var authorization: Authorization = Authorization()
    @Published var notAuthorized: Bool
    @Published var authorizationError: String
    
    init() {
        notAuthorized = true
        authorizationError = ""
    }
    
    func authorize(userName: String, password: String, passwordConfirmation: String) {
        authorization.userName = userName
        
        if password != "" && passwordConfirmation != "" && password == passwordConfirmation {
            authorization.password = password
            authorization.passwordsMatch = true
            
            notAuthorized = false
        } else {
            authorizationError = "Passwords mismatch"
            notAuthorized = true
        }
        
        print("Not authorized?", notAuthorized)
    }
    
}
