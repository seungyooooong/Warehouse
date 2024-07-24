//
//  Repository.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

class Repository: RepositoryInterface {
    func changeData(data: String) {
        DataSource.shared.changeData(data)
    }
    func getData() -> String {
        return DataSource.shared.getData()
    }
}
