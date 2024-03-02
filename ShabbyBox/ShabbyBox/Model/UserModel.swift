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
            LikeForDateModel(day: "Sun", like: 7),
            LikeForDateModel(day: "Mon", like: 0),
            LikeForDateModel(day: "Tue", like: 9),
            LikeForDateModel(day: "Wed", like: 2),
            LikeForDateModel(day: "Thu", like: 7),
            LikeForDateModel(day: "Fri", like: 6),
            LikeForDateModel(day: "Sat", like: 2)
        ]
    }
    
    init(id: Int, name: String, isLike: Bool, likeForDate: [LikeForDateModel]) {
        self.id = id
        self.name = name
        self.isLike = isLike
        self.likeForDate = likeForDate
    }
}

struct LikeForDateModel: Identifiable, Codable {
    let id: Int
    var day: String
    var like: Double
    
    init() {
        self.id = 1
        self.day = "Sun"
        self.like = 0
    }
    
    init(day: String, like: Double) {
        self.id = 1
        self.day = day
        self.like = like
    }
}
