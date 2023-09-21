//
//  ChatRoom.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI


struct ChatRoom: Codable, Identifiable, Hashable {
    var id: UUID = UUID()
    
    var name: String
    var last_message: String
    var images: [String]
    var isOnline: Bool
    var time: String
    var isGroup: Bool
    
}
