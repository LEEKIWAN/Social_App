//
//  AppRootManager.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/19.
//

import Foundation

final class AppRootManager: ObservableObject {
    
    @Published var currentRoot: AppRoot = .splash
    
    enum AppRoot {
        case splash
        case login
        case mainTab
    }
}
