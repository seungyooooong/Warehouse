//
//  RepositoryInterface.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

protocol RepositoryInterface {
    func changeData(data: String)
    func getData() -> String
}
