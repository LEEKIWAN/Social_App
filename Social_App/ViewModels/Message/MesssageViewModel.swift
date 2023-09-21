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
    
    @Published var whatPeopleSaygs: [WhatPeopleSaying] = []
    
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
    @MainActor
    func fetchChatRooms() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            chatRooms = [ChatRoom(name: "Alex Fish", last_message: "Hey, nice shoes where are hi good Moring hhh.", images: ["u1"], isOnline: true, time: "7s ago", isGroup: false),
                         ChatRoom(name: "Johny Vino", last_message: "I'm at Batch bar waiting to...", images: ["u2"], isOnline: false, time: "20mins ago", isGroup: false),
                         ChatRoom(name: "Scott Horsfall", last_message: "I can't find the location.", images: ["u3"], isOnline: true, time: "30 days ago", isGroup: false),
                         ChatRoom(name: "Group:", last_message: "Andrew, Rob, +21", images: ["p10", "p11", "p12"], isOnline: false, time: "20 days ago", isGroup: true)
            ]
//        }
        
    }
    
    @MainActor
    func fetchWhatPeopleSayings() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            whatPeopleSaygs = [WhatPeopleSaying(name: "Parties in Toronto downtown", time: "3 days ago", images: [
                "u1",
                "u2",
                "u3",
                "u2",
                "u1",
                "u4",
                "u1",
                "u2",
                "u3"
              ], members: "381", comments: "210"),
                               WhatPeopleSaying(name: "Thoughts on F45 classes?", time: "8 days ago", images: [
                                "u2",
                                "u3",
                                "u1",
                                "u3",
                                "u1",
                                "u2",
                                "u3"
                              ], members: "651", comments: "192"),
                               WhatPeopleSaying(name: "UX Meet ups and coffee", time: "10 days ago", images: [
                                "u1",
                                "u2",
                                "u3",
                                "u1",
                                "u2",
                                "u3"
                              ], members: "540", comments: "182")
                
            ]
//        }
        
    }
    
}
