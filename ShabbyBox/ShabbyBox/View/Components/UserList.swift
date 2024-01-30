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
        VStack {
            GroupBox {
                ForEach(userViewModel.userList) { user in
                    Text(user.name)
                        .font(.headline)
                        .foregroundStyle(Color("oppositeColor"))
                    if user.id < userViewModel.userList.count - 1 {
                        Divider()
                    }
                }
            }
            .backgroundStyle(Color("mainColor"))
            Spacer()
        }
        .hCenter()
        .padding(15)
    }
}

#Preview {
    UserList(userViewModel: UserViewModel())
}
