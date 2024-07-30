//
//  ResponseModel.swift
//  TCAPractice
//
//  Created by seungyooooong on 7/30/24.
//

import Foundation

struct ResponseModel: Codable {
    let success: Bool
    let data: ResponseDataModel
}

struct ResponseDataModel: Codable {
    let a: Int
    let b: String
    let c: Float
    let d: String
}
