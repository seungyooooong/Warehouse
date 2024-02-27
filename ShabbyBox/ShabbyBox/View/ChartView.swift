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
            if userViewModel.userList.count > 0 {
                ChartTitle(userViewModel: userViewModel)
                ChartComp(userViewModel: userViewModel)
            } else {
                NoUserNoti(userViewModel: userViewModel)
            }
        }
    }
}

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
