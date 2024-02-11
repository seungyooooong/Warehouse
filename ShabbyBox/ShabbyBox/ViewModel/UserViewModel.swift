//
//  UserViewModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var userList: [UserModel] = Bundle.main.decode("User.json")
    
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    init() {
        
    }
    
    func validateUserName(userName: String) -> String {
        if userName.count < 2 {
            return StaticText.userNameisTooShort
        }
        for i in 0 ..< userName.count {
            if Array(userName)[i] == " " {
                return StaticText.userNameHasSpacer
            }
        }
        for i in 0 ..< userList.count {
            if (userList[i].name == userName) {
                return StaticText.userNameisAlreadyExisted
            }
        }
        return ""
    }
    
    func addUser(userName: String) {
        // id를 유니크하게 보장하는 로직 추가 전에 임시로 마지막 user의 id보다 1높게 설정, 추후 수정
        let user = UserModel(id: userList[userList.count - 1].id + 1, name: userName, isLike: false)
        userList.append(user)
        
//        let userData = UserModel(id: userList.count, name: "GoSil\(userList.count)", isLike: false)
//        do {
//            let jsonData = try encoder.encode(userData)
//            let jsonString = String(data: jsonData, encoding: .utf8)
//            guard let jsonStr = jsonString else { fatalError() }
//            guard let jsonData = jsonStr.data(using: .utf8) else { fatalError() }
//            let user = try decoder.decode(UserModel.self, from: jsonData)
//            userList.append(user)
//        } catch {
//            print(error)
//        }
    }
    
    func toggleIsLike(user: UserModel) {
        for i in 0 ..< userList.count {
            if (userList[i].id == user.id) {
                let newUser = UserModel(id: userList[i].id, name: userList[i].name, isLike: !user.isLike)
                userList.remove(at: i)
                userList.insert(newUser, at: i)
            }
        }
    }
}
