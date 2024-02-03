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
        
        let jsonStr = """
        {
            "id" : 3,
            "name" : "testUserName3",
            "isLike" : false,
        }
        """

        guard let jsonData = jsonStr.data(using: .utf8) else {
            fatalError()
        }

        let decoder = JSONDecoder()

        do {
            let p = try decoder.decode(UserModel.self, from: jsonData)
            print(p)
            
        } catch {
            print(error)
        }
    }
}
