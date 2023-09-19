//
//  Social_AppApp.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

@main
struct Social_AppApp: App {
    var body: some Scene {
        WindowGroup {
//            NavigationStack {
                WelcomeView()
                .onAppear {
                    initlaizePublicThemes()
                }
        }
    }
    
    
    func initlaizePublicThemes() {
        
        print("dddd")
        
        
        UITabBar.appearance().isHidden = true
        

    }
}
