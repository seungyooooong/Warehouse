//
//  ChartView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/19/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        Chart(userViewModel.userList[0].likeForDate) { item in
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

#Preview {
    ChartView(userViewModel: UserViewModel())
        .accentColor(Color("oppositeMainColor"))
}
