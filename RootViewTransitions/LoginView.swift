//
//  LoginView.swift
//  RootViewTransitions
//
//  Created by Toomas Vahter on 30.11.2019.
//  Copyright © 2019 Augmented Code. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appFlowCoordinator: AppFlowCoordinator
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 16) {
                TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: appFlowCoordinator.showMainView) {
                    Text("Login")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(12)
                        .background(canLogin ? Color.blue : Color.gray)
                        .cornerRadius(32)
                }.disabled(!canLogin)
            }.padding(.all)
        }
    }
    
    var canLogin: Bool {
        return !email.isEmpty && !password.isEmpty
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(AppFlowCoordinator())
    }
}
