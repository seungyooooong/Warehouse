//
//  ChartTitle.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/23/24.
//

import SwiftUI

struct ChartTitle: View {
    @ObservedObject var userViewModel: UserViewModel
    
    var body: some View {
        if userViewModel.userList.count > 0 {
            Text("\(userViewModel.userList[userViewModel.selectedIndex].name)`s like for date")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(Color("oppositeColor"))
        }
    }
}

#Preview {
    ChartTitle(userViewModel: UserViewModel())
}
