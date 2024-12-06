//
//  TestData.swift
//  ShabbyBox
//
//  Created by seungyooooong on 12/6/24.
//

import Foundation
import SwiftData

@Model
class TestData {
    var content: String
    
    init(content: String) {
        self.content = content
    }
}
