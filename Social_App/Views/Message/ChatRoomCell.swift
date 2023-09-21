//
//  ChatRoomCell.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI

struct ChatRoomCell: View {
    var chatRoom: ChatRoom
    
    var body: some View {
        VStack {
            HStack {
                createChatImageView()
                                    
                VStack {
                    Text(chatRoom.name)
                        .lineLimit(1)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.primaryText)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(chatRoom.last_message)
                        .lineLimit(1)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.secondaryText)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 4)

                
                
                VStack(alignment: .trailing, spacing: 4) {
                    Text(chatRoom.time)
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(.secondaryText)
                        .frame(alignment: .trailing)
                    
                    
                    Text(chatRoom.isOnline ? "Active" : "")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(.primaryApp)
                        .frame(alignment: .trailing)
                }
                .padding(.top, 1)
            }
        }
        .padding(.horizontal)
    }
    
    
    
    @ViewBuilder
    func createChatImageView() -> some View {
        if chatRoom.images.count > 1 {
            ZStack {
                HStack(spacing: -15) {
                    ForEach(chatRoom.images, id: \.self) { image in
                        ZStack {
                            Circle()
                                .stroke(.black.opacity(0.15), lineWidth: 1)
                                .background(Circle().fill(.white))
                                .frame(width: 50, height: 50)
                            
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 45, height: 45)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            
        } else {
            ZStack(alignment: .topTrailing) {
                ZStack {
                    Circle()
                        .stroke(.black.opacity(0.15), lineWidth: 1)
                        .background(Circle().fill(.white))
                        .frame(width: 50, height: 50)
                    
                    Image(chatRoom.images.first ?? "person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                }
                
                ZStack {
                    Circle()
                        .stroke(.black.opacity(0.15), lineWidth: 1)
                        .frame(width: 15, height: 15)
                        .background(Circle().fill(.white))
                    
                    
                    
                    Circle()
                        .frame(width: 11, height: 11)
                        .foregroundColor(.primaryApp)
                    
                }
            }
        }
    }
}

#Preview {
    ChatRoomCell(chatRoom: .init(name: "df", last_message: "dffff", images: ["p10", "p11", "p12"], isOnline: true, time: "fff", isGroup: true))
}
