//
//  MainView.swift
//  HealthDiary
//
//  Created by 최승용 on 3/7/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Hello, World!")
                .tabItem {
                    Text("1")
                }
            Text("Hello, World2")
                .tabItem {
                    Text("2")
                }
            Text("Hello, World3")
                .tabItem {
                    Text("3")
                }
        }
    }
}

#Preview {
    MainView()
}
