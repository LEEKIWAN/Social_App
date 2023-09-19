//
//  Step3View.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct Step3View: View {
    @State private var password: String = ""
    @State private var rePassword: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                NavigationBar()
                Spacer()
                
                Text("Create a password")
                    .font(.system(size: 25, weight: .bold))
                
                Spacer()
                    .frame(height: 25)
                                
                
                RoundedSecureField(placeHolder: "Password", text: $password)
                RoundedSecureField(placeHolder: "Re-Type Password", text: $rePassword)
                
                
                NavigationLink {
                    Step4View()
                } label: {
                    Text("Next")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(.whiteText)
                        .frame(maxWidth: .infinity, minHeight: 54)
                        .background(Color.primaryApp)
                        .cornerRadius(27)
                        .padding(.vertical, 15)
                }
                

                
                Spacer()
                
            }
            .padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden()
    }
}

struct Step3View_Previews: PreviewProvider {
    static var previews: some View {
        Step3View()
    }
}
