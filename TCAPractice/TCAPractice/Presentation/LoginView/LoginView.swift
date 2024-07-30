//
//  LoginView.swift
//  TCAPractice
//
//  Created by 최승용 on 7/24/24.
//

import SwiftUI
import ComposableArchitecture

struct LoginView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    let store: StoreOf<LoginStore>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                Spacer()
                Text("isLogin is \(viewStore.isLogin)")
                Spacer()
                Button {
                    viewStore.send(.doAppleLogin)
                } label: {
                    Text("Apple Login")
                }
            }
            .padding()
        }
    }
}

#Preview {
    LoginView(store: Store(initialState: LoginStore.State(userDefaults: UserDefaults()), reducer: {LoginStore()}))
}
