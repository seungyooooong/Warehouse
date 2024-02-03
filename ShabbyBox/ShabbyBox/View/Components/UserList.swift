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
                VStack(spacing: 15) {
                    ForEach(userViewModel.userList) { user in
                        Divider()
                        HStack {
                            Image(systemName: user.isLike ? "heart.fill" : "heart")
                                .frame(width: 20, alignment: .leading)
                            Text(user.name)
                                .hCenter()
                                .font(.headline)
                                .foregroundStyle(Color("oppositeColor"))
                        }
                    }
                }
            } label: {
                HStack {
                    Text("UserList")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("oppositeColor"))
                    
                    Spacer()
                    
                    Button(action: {
                        userViewModel.addUser()
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .accentColor(Color("oppositeColor"))
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
