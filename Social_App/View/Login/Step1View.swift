//
//  Step1View.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct Step1View: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                NavigationBar()
                Spacer()
                
                Text("What's your name?")
                    .font(.system(size: 25, weight: .bold))
                                
                
                RoundedTextField(placeHolder: "First Name", text: $firstName)
                RoundedTextField(placeHolder: "Last Name", text: $lastName)
                
                
                NavigationLink {
                    Step2View()
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

struct Step1View_Previews: PreviewProvider {
    static var previews: some View {
        Step1View()
    }
}
