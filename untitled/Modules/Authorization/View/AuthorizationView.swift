//
//  AuthorizationView.swift
//  untitled
//
//  Created by Artem on 09.05.2021.
//

import SwiftUI

struct AuthorizationView: View {
    @ObservedObject private var authorizationViewModel: AuthorizationViewModel = AuthorizationViewModel()
    
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var passwordConfirmation: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Text("Authorization to access application")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Form {
                Section(header: Text("Username")) {
                    TextField("Your username", text: $userName)
                }
                Section(header: Text("Password")) {
                    TextField("Your password", text: $password)
                }
                Section(header: Text("Confirm password")) {
                    TextField("Password confirmation", text: $passwordConfirmation)
                }
                
            }
            .cornerRadius(10.0)
            .padding(7.5)
            .frame(width: 350, height: 300, alignment: .center)
            
            Button(
                action: {
                    authorizationViewModel.authorize(
                        userName: userName,
                        password: password,
                        passwordConfirmation: passwordConfirmation
                    )
                },
                label: {
                    Rectangle()
                        .fill(Color.blue)
                        .cornerRadius(6.0)
                        .overlay(
                            Text("Send")
                                .accentColor(Color.white)
                        )
                        .frame(width: 200, height: 50)
                        .padding(.top, 6.5)
                }
            )
            
            Spacer()
        }
    }
}
