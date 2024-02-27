//
//  NoUserNoti.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/27/24.
//

import SwiftUI

struct NoUserNoti: View {
    @ObservedObject var userViewModel: UserViewModel
    @State var showSheet = false
    
    var body: some View {
        Image(systemName: "x.circle")
            .padding(5)
        Text("User missing")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundStyle(Color("oppositeColor"))
        Button {
            showSheet = true
        } label: {
            Text("Add User")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .sheet(isPresented: $showSheet) {
            AddUserSheet(userViewModel: userViewModel)
                .presentationDetents([.small])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    NoUserNoti(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
