//
//  TabButton.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/15.
//

import SwiftUI

struct TabButton: View {
    let icon: String
    let title: String
    var isSelected: Bool = false
    var didTapped: (() -> Void)?
    
    var body: some View {
        
        Button {
            didTapped?()
        } label: {
            VStack {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .fontWeight(.light)
                
                Text(title)
                    .font(.system(size: 10, weight: .bold))
            }
            .frame(maxWidth: .infinity)
            
        }
        .foregroundColor(isSelected ? Color.primaryApp : Color.primaryText)

        
    }
}
