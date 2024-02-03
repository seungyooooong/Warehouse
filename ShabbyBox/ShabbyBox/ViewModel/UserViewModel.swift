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
    
    func addUser() {
        let userData = UserModel(id: userList.count, name: "GoSil\(userList.count)", isLike: false)
        
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        
        do {
            let jsonData = try encoder.encode(userData)
            let jsonString = String(data: jsonData, encoding: .utf8)
            guard let jsonStr = jsonString else { fatalError() }
            guard let jsonData = jsonStr.data(using: .utf8) else { fatalError() }
            let user = try decoder.decode(UserModel.self, from: jsonData)
            userList.append(user)
        } catch {
            print("\(error) in decoding")
        }
    }
}
