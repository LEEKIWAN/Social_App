//
//  CGFloat+.swift
//  Social_SwiftUI
//
//  Created by 이기완 on 2023/09/14.
//

import Foundation
import UIKit

extension CGFloat {
    static var screenWidth = UIScreen.main.bounds.size.width
    
    static var screenHeight = UIScreen.main.bounds.size.height
    
    static func widthPer(_ per: Double) -> Double {
        return screenWidth * per
    }
    
    static func heightPer(_ per: Double) -> Double {
        return screenHeight * per
    }
    
    
    static var topInsets: Double {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let window = windowScene.windows.first {
            return window.safeAreaInsets.top
        }
        
        return 0.0
    }
    
    static var bottomInsets: Double {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let window = windowScene.windows.first {
            return window.safeAreaInsets.bottom
        }
        
        return 0.0
    }
    
    
}
