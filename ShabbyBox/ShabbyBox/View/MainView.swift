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
            MVVMView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("UserList")
                }
                .tag(0)
            Text("SecondView")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("SecondView")
                }
                .tag(1)
            Text("ThirdView")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("SecondView")
                }
                .tag(2)
        }
        .accentColor(Color("oppositeMainColor"))
    }
}

#Preview {
    MainView()
}
