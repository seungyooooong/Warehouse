//
//  ChartView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/19/24.
//

import SwiftUI

struct ChartView: View {
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        ChartComp(userViewModel: userViewModel, likeForDate: userViewModel.userList[userViewModel.userList.count - 1].likeForDate)
    }
}

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
