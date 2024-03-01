//
//  MainView.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/26/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        TabView(selection: $userViewModel.tagIndex) {
            UserListView(userViewModel: userViewModel)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("UserList")
                }
                .tag(0)
            ChartView(userViewModel: userViewModel)
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
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    MainView(userViewModel: UserViewModel())
}
