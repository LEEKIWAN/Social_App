//
//  RoundedSecureField.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct RoundedSecureField: View {
    var placeHolder: String
    @Binding var text: String
    
    @State private var isShowPassword: Bool = false
    
    var body: some View {
        HStack {
            
            if isShowPassword {
                
                TextField(placeHolder, text: $text)
                    .frame(height: 50)
                    .padding(.horizontal, 20)
            } else {
                SecureField(placeHolder, text: $text)
                    .frame(height: 50)
                    .padding(.horizontal, 20)
            }
            
            
            Button {
                isShowPassword.toggle()
            } label: {
                Image(systemName: isShowPassword ? "eye.slash.fill" : "eye.fill" )
                    .padding()
                    .foregroundColor(.gray)
            }

            
        }
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.secondary, lineWidth:
                                                            1))

        
    }
}


struct RoundedSecureField_Previews: PreviewProvider {
    static var previews: some View {
        RoundedSecureField(placeHolder: "ddff", text: .constant("sfdsafdsfsdfsdlfhsdkjfhlsdfhsdfjsdfjkalksdfjl;adjlfkjfklf"))
    }
}

