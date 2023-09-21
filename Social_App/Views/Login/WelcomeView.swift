//
//  ContentView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject private var appRootManager: AppRootManager
    
    @State private var isLogged = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.primaryApp, .primaryEnd], startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading) {
                    createLoginText()
                    
                    Spacer()
                    
                    Group {
                        createAppLogoImage()
                        createWelcomeText()
                        createGoogleButton()
                        createCreateAccountButton()
                    }
                                    
                    createPolicyGuides()
                }
                .padding(.horizontal, 20)
                .foregroundColor(.whiteText)
                
            }
            .ignoresSafeArea()
        }
        
        
    }
}



// MARK: - Privacy Views
private extension WelcomeView {
    func createLoginText() -> some View {
        NavigationLink {
            LoginView()
        } label: {
            HStack {
                Text("Have an account already?")
                    .font(.system(size: 16, weight: .semibold))
                
                Text("Login")
                    .font(.system(size: 16, weight: .semibold))
                    .underline()
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, .topInsets + 15)
            
        }
        
        
    }
    
    func createAppLogoImage() -> some View {
        Image("app_logo")
            .scaledToFit()
            .frame(width: 80, height: 80)
        
    }
    
    func createWelcomeText() -> some View {
        HStack {
            Text("Welcome to")
                .font(.system(size: 25, weight: .regular))
            
            Text("Waiker.")
                .font(.system(size: 25, weight: .bold))
        }
        .padding(.vertical, 15)
    }
    
    
    func createGoogleButton() -> some View {
        Button {
            appRootManager.currentRoot = .mainTab
        } label: {
            HStack {
                Image("google")
                Text("Continue with google")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.primaryApp)
            }
            .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
            .background(Color.whiteText)
            .cornerRadius(25)
        }
        
        
        
    }
    
    func createCreateAccountButton() -> some View {
        NavigationLink {
            Step1View()
        } label: {
            Text("Create Account")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(Color.whiteText)
                .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
                .background(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(.white, lineWidth: 2))
        }
        
    }
    
    func createPolicyGuides() -> some View {
        VStack(alignment: .leading) {
            Text("By tapping Continue, Create account, I agree to Compnay's")
                .font(.system(size: 12, weight: .regular))
            
            HStack {
                Button {
                    
                } label: {
                    Text("Terms of Service.")
                        .font(.system(size: 12, weight: .regular))
                        .underline()
                }
                
                Button {
                    
                } label: {
                    Text("Paymenets Terms of Service.")
                        .font(.system(size: 12, weight: .regular))
                        .underline()
                }
            }
            
            Button {
                
            } label: {
                Text("Privacy Policy, and Non-discrimination Policy.")
                    .font(.system(size: 12, weight: .regular))
                    .underline()
            }
            .padding(.bottom, .bottomInsets + 40)
        }
        .padding(.vertical, 5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            WelcomeView()
        }
        
    }
}
