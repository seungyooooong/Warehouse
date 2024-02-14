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
        List {
            Section (header:
                HStack {
                    Text("UserList")
                        .font(.title2)
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
                            .presentationDetents([.small])
                            .presentationDragIndicator(.visible)
                    }
                }
            ) {
                ForEach(userViewModel.userList) { user in
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
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            userViewModel.toggleIsLike(user: user)
                        } label: {
                            Image(systemName: user.isLike ? "heart.slash" : "heart")
                        }
                    }
                    //                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    //                            Button {
                    //                                print("delete function")
                    //                            } label: {
                    //                                Image(systemName: "trash")
                    //                                    .tint(.red)
                    //                            }
                    //                        }
                }   // ForEach
                .onDelete(perform: { indexSet in
                    userViewModel.userList.remove(atOffsets: indexSet)
                })
                .listRowSeparator(.hidden)
                .listRowBackground(Color("mainColor"))
            }   // Section
        }   // List
        .listStyle(.plain)
        .cornerRadius(10.0)
        .padding(15)
    }
}

#Preview {
    UserList(userViewModel: UserViewModel())
}
