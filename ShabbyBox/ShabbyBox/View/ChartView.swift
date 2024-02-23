//
//  ChartView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/19/24.
//

import SwiftUI

struct ChartView: View {
    @ObservedObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack {
            Text("\(userViewModel.userList[userViewModel.selectedIndex].name)`s like for date")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(Color("oppositeColor"))
            ChartComp(userViewModel: userViewModel)
        }
    }
}

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
