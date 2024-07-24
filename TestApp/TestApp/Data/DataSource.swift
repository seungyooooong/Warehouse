//
//  DataSource.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

class DataSource {
    static let shared = DataSource()
    private var data: String = "not change"
    
    private init() { }
    
    func changeData(_ data: String) {
        self.data = data
    }
    func getData() -> String {
        return self.data
    }
}
