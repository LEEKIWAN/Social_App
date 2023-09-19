//
//  RecommendCell.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import Foundation
import SwiftUI

struct RecommendCell: View {
    
    let user: RecommendUser
    
    var body: some View {
        
        ZStack {
            
            VStack {
                ZStack {
                    LinearGradient(colors: [.peach, .primaryEnd], startPoint: .top, endPoint: .bottom)
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                                    
                    Image(user.image)
                        .resizable()
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                }
                    
                Text(user.name)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.secondaryText)
            }
        }
        
        
    }
}
