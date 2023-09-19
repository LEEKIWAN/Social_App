//
//  HomeViewModel.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var recommendUsers: [RecommendUser] = []
    @Published var userFeeds: [UserFeed] = []
    
    
    @MainActor
    func fetchRecommendUsers() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            recommendUsers = [RecommendUser(name: "James McLoland", image: "r1"),
                              RecommendUser(name: "Bessie Simadaoook", image: "r2"),
                              RecommendUser(name: "Jeffery Hall", image: "r3"),
                              RecommendUser(name: "Judy Adler", image: "r4")
            ]
                              
//        }
        
    }
    
    @MainActor
    func fetchUserFeeds() async {
//        DispatchQueue.global().asyncAfter(deadline: .now() + 0.2) { [unowned self] in
            userFeeds = [UserFeed(name: "Georgia Bates", image: "u1", status: "Toronto, Ontario", isOnline: false, time: "30s ago", images: ["p1", "p2", "p3"]),
                         UserFeed(name: "Johny Vino", image: "u2", status: "Mississauga, Ontario", isOnline: false, time: "5mins ago", images: ["p4", "p5", "p6"]),
                         UserFeed(name: "Scott Horsfall", image: "u3", status: "Markham, Ontario", isOnline: true, time: "10mins ago", images: ["p7", "p8", "p9"]),
                         UserFeed(name: "Meagan Ryan", image: "u4", status: "Oakvill Ontario", isOnline: false, time: "2days ago", images: ["p10", "p11", "p12"])
            ]
//        }
        
    }
}
