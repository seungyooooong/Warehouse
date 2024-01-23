//
//  UserViewModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var userList: [UserModel] = Bundle.main.decode("User.json")
    
    init() {
//        initData()
//        loadData()
    }
    
//    func initData() {
//        let userModel = UserModel(name: "testUser1")
//        userList.append(userModel)
//    }
}
