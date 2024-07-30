//
//  InitView.swift
//  TCAPractice
//
//  Created by seungyooooong on 7/30/24.
//

import SwiftUI
import ComposableArchitecture

struct InitView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    
    var body: some View {
        if userDefaults.isLogin {
            ContentView(store: Store(initialState: Feature.State(), reducer: {
                Feature()
            }))
        } else {
            LoginView(store: Store(initialState: LoginStore.State(userDefaults: userDefaults), reducer: {LoginStore()}))
        }
    }
}

#Preview {
    InitView()
}
