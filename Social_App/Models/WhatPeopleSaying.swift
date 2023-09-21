//
//  WhatPeopleSaying.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import Foundation

struct WhatPeopleSaying: Codable, Identifiable, Hashable {
    var id: UUID = UUID()
    

    
    var name: String
    var time: String
    var images: [String]
    var members: String
    var comments: String
    
}

