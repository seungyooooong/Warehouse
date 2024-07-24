//
//  GetDataUseCase.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

class GetDataUseCase {
    private let repository: RepositoryInterface
    
    init(repository: RepositoryInterface) {
        self.repository = repository
    }
    
    func getData() -> String {
        return repository.getData()
    }
}
