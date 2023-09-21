//
//  WhatPeopleSayingCell.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI

struct WhatPeopleSayingCell: View {
    let maxImageCount = 3
    var whatPeopleSaying: WhatPeopleSaying
    
    var visibleImageCount: Int {
        return whatPeopleSaying.images.count > maxImageCount ? 3 : whatPeopleSaying.images.count
    }
        
    var body: some View {
        VStack {
            HStack(spacing: -15) {
                ForEach(0 ..< visibleImageCount, id: \.self) { index in
                    createProfileImageView(whatPeopleSaying.images[index])
                }
                
                                
                Text(whatPeopleSaying.images.count > maxImageCount ?
                     "+\(whatPeopleSaying.images.count - 3)" : "").offset(x: 20)
                    .font(.system(size: 13, weight: .regular))
                    .padding(.trailing, 20)
                    .foregroundColor(.primaryText)
            }
            
            Text(whatPeopleSaying.name)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.primaryText)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            
            Text(whatPeopleSaying.time)
                .font(.system(size: 11))
                .foregroundColor(.secondaryText)
            
            Divider()
                .padding(.vertical, 5)
            
            Text("\(whatPeopleSaying.members) Members")
                .font(.system(size: 11))
                .foregroundColor(.secondaryText)
            
            Text("\(whatPeopleSaying.comments) Comments")
                .font(.system(size: 11))
                .foregroundColor(.secondaryText)
            
            
        }
        .frame(width: 160, height: 180)
        .background(
            Rectangle().fill(.white)
                .shadow(radius: 5, y: 2 )
        )
    }
    
    func createProfileImageView(_ name: String) -> some View {
        ZStack {
            Circle()
                .stroke(.black.opacity(0.15), lineWidth: 1)
                .background(Circle().fill(.white))
                .frame(width: 50, height: 50)
            
            Image(name)
                .resizable()
                .scaledToFill()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
        }
    }
}



#Preview {
    WhatPeopleSayingCell(whatPeopleSaying: WhatPeopleSaying(name: "UX Meet ups and coffee", time: "10 days ago", images: [
        "u1",
        "u2",
        "u3",
        "u1",
        "u2",
        "u3"
      ], members: "540", comments: "182"))
        
}
