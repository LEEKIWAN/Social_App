//
//  LoginView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                NavigationBar()
                Spacer()
                
                Text("Login")
                    .font(.system(size: 25, weight: .bold))
                    
                Spacer()
                    .frame(height: 25)
                                
                
                RoundedTextField(placeHolder: "Email", text: $email)
                RoundedSecureField(placeHolder: "Password", text: $password)
                
                
                Text("Forgot passowrd?")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.primaryApp)
                    .padding(.vertical, 8)
                
                NavigationLink {
                    
                } label: {
                    Text("Login")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(.whiteText)
                        .frame(maxWidth: .infinity, minHeight: 54)
                        .background(Color.primaryApp)
                        .cornerRadius(27)
                        .padding(.vertical, 15)
                }
                
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.primaryText)
                    
                    NavigationLink {
                        Step1View()
                    } label: {
                        Text("Sign up")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.primaryApp)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                
                
            }
            .padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden()
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
