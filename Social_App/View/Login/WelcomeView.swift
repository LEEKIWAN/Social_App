//
//  ContentView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.primaryApp, .primaryEnd], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading) {
                createHaveAnAccountText()
                
                Spacer()
                
                Group {
                    createAppLogoImage()
                    createWelcomeText()
                    
                    createGoogleButton()
                    Spacer()
                        .frame(height: 20)
                    
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


// MARK: - Privacy Views
private extension WelcomeView {
    func createHaveAnAccountText() -> some View {
        HStack {
            Text("Have an account already?")
                .font(.system(size: 14, weight: .regular))
            
            Button(action: {
                
            }, label: {
                Text("Login")
                    .font(.system(size: 14))
                    .underline()
            })
                
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.top, .topInsets + 15)
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
            
        } label: {
            HStack {
                Image("google")
                Text("Continue with google")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.primaryApp)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
        .background(Color.whiteText)
        .cornerRadius(27)
    }
    
    func createCreateAccountButton() -> some View {
        NavigationLink {
            Step1View()
        } label: {
            HStack {
                Text("Create Account")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(Color.whiteText)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
        .background(Color.clear)
        .cornerRadius(27)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(.white, lineWidth: 2))
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