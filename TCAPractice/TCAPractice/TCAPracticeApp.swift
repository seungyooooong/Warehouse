//
//  TCAPracticeApp.swift
//  TCAPractice
//
//  Created by 최승용 on 7/18/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAPracticeApp: App {
    @State var isLogin: Bool = false
    
    var body: some Scene {
        WindowGroup {
//            ContentView(store: Store(initialState: Feature.State(), reducer: {
//                Feature()
//            }))
            LoginView(store: Store(initialState: LoginStore.State(isLogin: isLogin), reducer: {LoginStore()}))
        }
    }
}
