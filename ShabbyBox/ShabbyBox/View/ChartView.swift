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
                Image(systemName: "x.circle")
                    .padding(5)
                Text("User missing")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("oppositeColor"))
            }
        }
    }
}

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
