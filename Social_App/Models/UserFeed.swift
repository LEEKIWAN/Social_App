//
//  UserFeed.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import Foundation

struct UserFeed: Codable, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var image: String
    var status: String
    var isOnline: Bool
    var time: String
    var images: [String]
    
}
