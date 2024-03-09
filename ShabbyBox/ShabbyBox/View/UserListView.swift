//
//  UserListView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/7/24.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var userViewModel: UserViewModel
    @ObservedObject var tabViewModel: TabViewModel
    
    var body: some View {
        UserList(userViewModel: userViewModel, tabViewModel: tabViewModel)
//        ViewThatFits(in: .vertical) {
//            UserList(userViewModel: userViewModel)
//            ScrollView {
//                UserList(userViewModel: userViewModel)
//            }
//        }
    }
}

#Preview {
    UserListView(userViewModel: UserViewModel(), tabViewModel: TabViewModel())
}
