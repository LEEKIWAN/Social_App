//
//  Step2View.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct Step2View: View {
    @State private var email: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                NavigationBar()
                Spacer()
                
                Text("What's your email?")
                    .font(.system(size: 25, weight: .bold))
                                
                Spacer()
                    .frame(height: 25)
                                
                RoundedTextField(placeHolder: "yourname@company.com", text: $email, keyboardType: .emailAddress)
                
                
                NavigationLink {
                    Step3View()
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

struct Step2View_Previews: PreviewProvider {
    static var previews: some View {
        Step2View()
    }
}
