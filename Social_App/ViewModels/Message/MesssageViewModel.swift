//
//  MesssageViewModel.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI

class MessageViewModel: ObservableObject {
    
    @Published var activeUsers: [RecommendUser] = []
    @Published var chatRooms: [ChatRoom] = []
    
    
    @MainActor
    func fetchActiveUsers() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            activeUsers = [RecommendUser(name: "James McLoland", image: "r1"),
                              RecommendUser(name: "Bessie Simadaoook", image: "r2"),
                              RecommendUser(name: "Jeffery Hall", image: "r3"),
                              RecommendUser(name: "Judy Adler", image: "r4")
            ]
                              
//        }
        
    }
//    
//    @MainActor
    func fetchChatRooms() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            chatRooms = [ChatRoom(name: "Alex Fish", last_message: "Hey, nice shoes where are hi good Moring hhh.", image: ["u1"], isOnline: true, time: "7s ago", isGroup: false),
                         ChatRoom(name: "Johny Vino", last_message: "I'm at Batch bar waiting to...", image: ["u2"], isOnline: false, time: "20mins ago", isGroup: false),
                         ChatRoom(name: "Scott Horsfall", last_message: "I can't find the location.", image: ["u3"], isOnline: true, time: "30 days ago", isGroup: false),
                         ChatRoom(name: "Group:", last_message: "Andrew, Rob, +21", image: ["p10", "p11", "p12"], isOnline: false, time: "20 days ago", isGroup: true)
            ]
//        }
        
    }
}
