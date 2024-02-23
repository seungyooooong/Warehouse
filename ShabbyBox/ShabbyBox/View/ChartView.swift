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
            ChartTitle(userViewModel: userViewModel)
            ChartComp(userViewModel: userViewModel)
        }
    }
}

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
