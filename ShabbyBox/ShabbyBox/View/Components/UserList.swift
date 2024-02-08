//
//  UserList.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/22/24.
//

import SwiftUI
 
struct UserList: View {
    @ObservedObject var userViewModel: UserViewModel
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Group {
                HStack {
                    Text("UserList")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("oppositeColor"))
                    
                    Spacer()
                    
                    Button{
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    .accentColor(Color("oppositeColor"))
                    .sheet(isPresented: $showSheet) {
                        AddUserSheet(userViewModel: userViewModel)
                            .presentationDetents([.medium])
                            .presentationDragIndicator(.visible)
                    }
                }
                .padding(15)
                .background(Color("mainColor"))
                List {
                    ForEach(userViewModel.userList) { user in
//                        Divider()
                        HStack {
                            Button {
                                userViewModel.toggleIsLike(user: user)
                            } label: {
                                Image(systemName: user.isLike ? "heart.fill" : "heart")
                                    .accentColor(Color("oppositeColor"))
                            }
                            Text(user.name)
                                .hCenter()
                                .font(.headline)
                                .foregroundStyle(Color("oppositeColor"))
                        }
                        .padding(.vertical, 10)
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                print("test")
                            } label: {
                                Image(systemName: "person.3")
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color("mainColor"))
                }
                .listStyle(.plain)
            }
        }
        .padding(15)
    }
}

#Preview {
    UserList(userViewModel: UserViewModel())
}
