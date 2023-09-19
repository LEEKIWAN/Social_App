//
//  RecommendUser.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import Foundation


struct RecommendUser: Codable, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var image: String
}
