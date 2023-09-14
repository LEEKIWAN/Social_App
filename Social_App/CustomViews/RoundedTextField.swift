//
//  RoundedTextField.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct RoundedTextField: View {
    var placeHolder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .keyboardType(keyboardType)
            .frame(height: 50)
            .padding(.horizontal, 20)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.secondary, lineWidth: 1))
        
    }
}
