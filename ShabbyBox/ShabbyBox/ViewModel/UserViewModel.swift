//
//  UserViewModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var userList: [UserModel] = Bundle.main.decode("User.json")
    @Published var tagIndex: Int = 0
    @Published var selectedIndex: Int = 0
    
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
        let user = UserModel(id: findUserId(), name: userName, isLike: false)
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
    
    func findUserId() -> Int {
        var userId = userList[userList.count - 1].id + 1
        let sortedUserList = userList.sorted(by: { $0.id < $1.id })
        for i in 0 ..< userList.count {
//            print(sortedUserList[i].name)
        }
        return userId
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
    
    func showChart(user: UserModel) {
        selectedIndex = user.id
        tagIndex = 1
    }
}
