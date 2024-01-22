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
        List {
            ForEach(userViewModel.userList) { user in
                Text(user.name)
            }
        }
    }
}

#Preview {
    MVVMView()
}
