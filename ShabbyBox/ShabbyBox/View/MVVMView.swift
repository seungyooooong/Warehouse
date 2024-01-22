//
//  MVVMView.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/20/24.
//

import SwiftUI

struct MVVMView: View {
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        ViewThatFits(in: .vertical) {
            UserList(userViewModel: userViewModel)
            ScrollView {
                UserList(userViewModel: userViewModel)
            }
        }
    }
}

#Preview {
    MVVMView()
}
