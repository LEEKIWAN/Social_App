//
//  Step4View.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct Step4View: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Spacer()
                
                Text("Turn on notifications")
                    .font(.system(size: 25, weight: .bold))
                                
                
                Text("Get the most out of Company by staying up to date with what's happening.")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.primaryText)
                    .padding(.vertical, 12)
                
                
                Button {
                    NavigationUtil.popToRootView()
                } label: {
                    Text("Allow Notifications")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(.whiteText)
                        .frame(maxWidth: .infinity, minHeight: 54)
                        .background(Color.primaryApp)
                        .cornerRadius(25)
                        .padding(.vertical, 15)
                }
                
                
                
                Button {
                    NavigationUtil.popToRootView()
                } label: {
                    Text("Skip for now")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.primaryApp)
                }
                
                Spacer()
                
            }
            .padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden()
    }
}

struct Step4View_Previews: PreviewProvider {
    static var previews: some View {
        Step4View()
    }
}
