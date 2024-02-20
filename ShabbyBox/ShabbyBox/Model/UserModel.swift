//
//  UserModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

struct UserModel: Identifiable, Codable {
    let id: Int
    let name: String
    let isLike: Bool
    let likeForDate: [LikeForDateModel]
    
    init(id: Int, name: String, isLike: Bool) {
        self.id = id
        self.name = name
        self.isLike = isLike
        self.likeForDate = [
            LikeForDateModel(day: "Sun", like: 77),
            LikeForDateModel(day: "Mon", like: 80),
            LikeForDateModel(day: "Tue", like: 90),
            LikeForDateModel(day: "Wed", like: 82),
            LikeForDateModel(day: "Thu", like: 70),
            LikeForDateModel(day: "Fri", like: 60),
            LikeForDateModel(day: "Sat", like: 88)
        ]
    }
}

struct LikeForDateModel: Identifiable, Codable {
    let id: Int
    var day: String
    var like: Double
    
    init() {
        self.id = 1
        self.day = "Sun"
        self.like = 77
    }
    
    init(day: String, like: Double) {
        self.id = 1
        self.day = day
        self.like = like
    }
}
