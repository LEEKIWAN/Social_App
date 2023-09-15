//
//  NavigationBar.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/14.
//

import SwiftUI

struct NavigationBar: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        HStack {
            Button {
                presentationMode.wrappedValue.dismiss()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                    .frame(width: 25, height: 25)
            }
            
            
            
            
            Spacer()
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
