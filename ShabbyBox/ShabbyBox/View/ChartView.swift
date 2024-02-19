//
//  ChartView.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/19/24.
//

import SwiftUI
import Charts

struct WeightModel: Identifiable {
    var id: String = UUID().uuidString
    var day: String
    var weight: Double
}

var weightData: [WeightModel] = [
    WeightModel(day: "Sun", weight: 77),
    WeightModel(day: "Mon", weight: 80),
    WeightModel(day: "Tue", weight: 90),
    WeightModel(day: "Wed", weight: 82),
    WeightModel(day: "Thu", weight: 70),
    WeightModel(day: "Fri", weight: 60),
    WeightModel(day: "Sat", weight: 88)
]

struct ChartView: View {
    var body: some View {
        Chart(weightData) { item in
            LineMark(
                x: .value("Day", item.day),
                y: .value("Weight", item.weight)
            )
//            .interpolationMethod(.catmullRom)
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
                Text("\(Int(item.weight))")
            }
        }   // Chart
        .frame(height: 200)
    }
}

#Preview {
    ChartView()
        .accentColor(Color("oppositeMainColor"))
}
