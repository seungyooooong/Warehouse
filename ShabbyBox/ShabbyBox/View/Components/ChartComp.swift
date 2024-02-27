//
//  ChartComp.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/21/24.
//

import SwiftUI
import Charts

struct ChartComp: View {
    @ObservedObject var userViewModel: UserViewModel
    
    var body: some View {
        if userViewModel.userList.count > 0 {
            Chart(userViewModel.userList[userViewModel.selectedIndex].likeForDate) { item in
                LineMark(
                    x: .value("Day", item.day),
                    y: .value("Like", item.like)
                )
                //            .foregroundStyle(by: .value("Day", item.day))
                .symbol {
                    Circle()
                        .fill(Color("oppositeColor").opacity(0.5))
                        .frame(width: 10)
                        .shadow(radius: 2)
                }
                .lineStyle(.init(lineWidth: 5))
                //            .lineStyle(StrokeStyle(lineWidth: 10))
                //            .symbol(by: .value("Day", item.day))
                //            .interpolationMethod(.catmullRom)
                .annotation(position: .overlay, alignment: .top) {
                    Text("\(Int(item.like))")
                }
            }   // Chart
            .frame(height: 200)
        }
    }
}

#Preview {
    ChartComp(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
