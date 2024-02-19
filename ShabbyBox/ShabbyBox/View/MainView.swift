//
//  MainView.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/26/24.
//

import SwiftUI

struct MainView: View {
    @State var tagIndex: Int = 0
    
    var body: some View {
        TabView(selection: $tagIndex) {
            UserListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("UserList")
                }
                .tag(0)
            ChartView()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Chart")
                }
                .tag(1)
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("AppInfo")
                }
                .tag(2)
        }
        .accentColor(Color("oppositeMainColor"))
    }
}

#Preview {
    MainView()
}
