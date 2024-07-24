//
//  UpdateDataUseCase.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

class UpdateDataUseCase {
    private let repository: RepositoryInterface
    
    init(repository: RepositoryInterface) {
        self.repository = repository
    }
    
    func updateData(dataModel: DataModel) {
        repository.changeData(data: dataModel.data)
    }
}
