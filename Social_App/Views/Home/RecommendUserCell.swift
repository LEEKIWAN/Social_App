//
//  RecommendCell.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import Foundation
import SwiftUI

struct RecommendUserCell<Destination: View>: View {
    
    let user: RecommendUser
    
    var isActive: Bool = false
    
    var destination: (() -> Destination)
    
    var body: some View {
        
        ZStack {
            
            VStack {
                ZStack(alignment: .topTrailing) {
                    ZStack {
                        LinearGradient(colors: [.peach, .primaryEnd], startPoint: .top, endPoint: .bottom)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                        
                        NavigationLink(destination: destination) {
                            Image(user.image)
                                .resizable()
                                .frame(width: 65, height: 65)
                                .clipShape(Circle())
                            
                        }
                    }
                    .padding(.horizontal, 3)
                               
                    if isActive {
                        ZStack {
                            Circle()
                                .strokeBorder(.black.opacity(0.2), lineWidth: 1)
                                .background(Circle().foregroundColor(Color.white))
                                .frame(width: 25, height: 25)
                            
                            
                            Circle()
                                .strokeBorder(.black.opacity(0.2), lineWidth: 1)
                                .background(Circle().foregroundColor(Color.primaryApp))
                                .frame(width: 19, height: 19)
                        }
                    }
                    
                }
                    
                Text(user.name)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.secondaryText)
            }
        }
        
        
    }
}


#Preview {
    RecommendUserCell(user: RecommendUser(name: "kiwan", image: "r1"), isActive: true) {
        HomeView()
    }
}
