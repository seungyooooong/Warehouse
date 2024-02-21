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
    @State var likeForDate: [LikeForDateModel]
    
    var body: some View {
        Chart(likeForDate) { item in
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
        .onAppear {
            likeForDate = userViewModel.userList[userViewModel.userList.count - 1].likeForDate
            print(likeForDate)
        }
    }
}

#Preview {
    ChartComp(userViewModel: UserViewModel(), likeForDate: [LikeForDateModel()])
        .accentColor(Color("oppositeMainColor"))
}
