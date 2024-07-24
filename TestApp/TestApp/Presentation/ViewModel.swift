//
//  ViewModel.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var data: String = ""
    private let updateDataUseCase: UpdateDataUseCase
    private let getDataUseCase: GetDataUseCase
    
    init() {
        let repository = Repository()
        self.updateDataUseCase = UpdateDataUseCase(repository: repository)
        self.getDataUseCase = GetDataUseCase(repository: repository)
    }
    
    func changeData() {
        updateDataUseCase.updateData(dataModel: DataModel(data: "change!"))
        self.getData()
    }
    func getData() {
        data = getDataUseCase.getData()
    }
}
