//
//  UserList.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/22/24.
//

import SwiftUI

struct UserList: View {
    @ObservedObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(userViewModel.userList) { user in
                Text(user.name)
                    .font(.headline)
                    .foregroundStyle(Color("oppositeColor"))
                if user.id < userViewModel.userList.count - 1 {
                    Divider()
                }
            }
        }
        .hCenter()
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15.0)
                .fill(Color("mainColor"))
                .padding(.horizontal)
        )
    }
}

#Preview {
    UserList(userViewModel: UserViewModel())
}
