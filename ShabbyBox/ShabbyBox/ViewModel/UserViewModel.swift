//
//  UserViewModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var userList: [UserModel] = Bundle.main.decode("User.json")
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
    
    func removeUserByIndexSet(indexSet: IndexSet) {
        if indexSet.last == selectedIndex && selectedIndex == userList.count - 1 && userList.count > 1 {
            selectedIndex = userList.count - 2
        }
        userList.remove(atOffsets: indexSet)
    }
    
    func findUserId() -> Int {
        if userList.count > 0 {
            let sortedUserList = userList.sorted(by: { $0.id < $1.id })
            for i in 0 ..< userList.count {
                guard i == sortedUserList[i].id else {
                    return i
                }
            }
            return sortedUserList[userList.count - 1].id + 1
        } else {
            return 0
        }
    }
    
    func findSelectedIndexByUserId(userId: Int) -> Int {
        for i in 0 ..< userList.count {
            if userList[i].id == userId {
                return i
            }
        }
        return 0
    }
    
    func toggleIsLike(user: UserModel) {
        for i in 0 ..< userList.count {
            if (userList[i].id == user.id) {
                var newUserLikeForDate = user.likeForDate
                let variation = user.isLike ? -1.0 : 1.0
                newUserLikeForDate[6].like = userList[i].likeForDate[6].like + variation
                let newUser = UserModel(id: userList[i].id, name: userList[i].name, isLike: !user.isLike, likeForDate: newUserLikeForDate)
                userList.remove(at: i)
                userList.insert(newUser, at: i)
            }
        }
    }
    
    func showChart(user: UserModel, tabViewModel: TabViewModel) {
        selectedIndex = findSelectedIndexByUserId(userId: user.id)
        tabViewModel.setTagIndex(tagIndex: 1)
    }
}
