//
//  Color+.swift
//  Social_SwiftUI
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}



extension Color {
 
    static let peach = Color(hex: "#ff8882")
    static let ivory = Color(hex: "f8ede3")
    static let brown = Color(hex: "897853")
    
    static let primaryApp: Color = Color(hex: "2676E1")
    static let primaryEnd: Color = Color(hex: "00B5AA")
    
    
    static let whiteText: Color = .white
    static let primaryText: Color = Color(hex: "434B56")
    static let secondaryText: Color = Color(hex: "7C8085")
    
}
 

