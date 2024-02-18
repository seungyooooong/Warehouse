//
//  UserListView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/7/24.
//

import SwiftUI

struct UserListView: View {
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        UserList(userViewModel: userViewModel)
//        ViewThatFits(in: .vertical) {
//            UserList(userViewModel: userViewModel)
//            ScrollView {
//                UserList(userViewModel: userViewModel)
//            }
//        }
    }
}

#Preview {
    UserListView(userViewModel: UserViewModel())
}
