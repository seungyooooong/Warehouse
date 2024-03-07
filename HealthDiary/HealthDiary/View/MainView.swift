//
//  MainView.swift
//  HealthDiary
//
//  Created by 최승용 on 3/7/24.
//

import SwiftUI

struct MainView: View {
    @State var tagIndex = 1
    
    var body: some View {
        TabView (selection: $tagIndex) {
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .tag(0)
            RecordView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Record")
                }
                .tag(1)
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("AppInfo")
                }
                .tag(2)
        }
    }
}

#Preview {
    MainView()
}
