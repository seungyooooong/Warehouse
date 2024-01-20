//
//  UserModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}
