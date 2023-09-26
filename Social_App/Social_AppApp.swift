//
//  Social_AppApp.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

@main
struct Social_AppApp: App {
    
    @StateObject private var appRootManager = AppRootManager()
    @State private var isAnimating = true
    
    var body: some Scene {        
        WindowGroup {
//            NavigationStack {
                Group {
                    switch appRootManager.currentRoot {
                    case .splash:
                        WelcomeView()
                            .animation(.easeIn, value: isAnimating)
                        
                    case .login:
                        WelcomeView()
                            .animation(.easeIn, value: isAnimating)
                        
                    case .mainTab:
                        MainTabView()
                            .animation(.easeOut, value: isAnimating)
                        
                    }
                }
//            }
        }
        .environmentObject(appRootManager)
         
    }
    
    
    func initlaizePublicThemes() {
        
        print("dddd")
        
        
        UITabBar.appearance().isHidden = true
        

    }
}
