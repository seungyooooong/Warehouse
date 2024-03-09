//
//  MainView.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/26/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var userViewModel = UserViewModel()
    @StateObject var tabViewModel = TabViewModel()
    
    var body: some View {
        TabView(selection: $tabViewModel.tagIndex) {
            UserListView(userViewModel: userViewModel, tabViewModel: tabViewModel)
                .tag(0)
            ChartView(userViewModel: userViewModel)
                .tag(1)
            AppInfoView()
                .tag(2)
        }   // TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button(action: { withAnimation { tabViewModel.tagIndex = 0 } }) {
                        VStack {
                            Image(systemName: "person.3")
                            Text("UserList")
                        }
                    }
                    .foregroundColor(tabViewModel.tagIndex == 0 ? .accentColor : .primary)
                    .frame(maxWidth: .infinity)

                    Button(action: { withAnimation { tabViewModel.tagIndex = 1 } }) {
                        VStack {
                            Image(systemName: "chart.xyaxis.line")
                            Text("Chart")
                        }
                    }
                    .foregroundColor(tabViewModel.tagIndex == 1 ? .accentColor : .primary)
                    .frame(maxWidth: .infinity)

                    Button(action: { withAnimation { tabViewModel.tagIndex = 2 } }) {
                        VStack {
                            Image(systemName: "gear")
                            Text("AppInfo")
                        }
                    }
                    .foregroundColor(tabViewModel.tagIndex == 2 ? .accentColor : .primary)
                    .frame(maxWidth: .infinity)
                }   // HStack
                .font(.footnote)
                .padding()
            }   // ToolBarItem
        }   // toolbar
        .accentColor(Color("oppositeMainColor"))
    }
}

#Preview {
    MainView(userViewModel: UserViewModel())
}
