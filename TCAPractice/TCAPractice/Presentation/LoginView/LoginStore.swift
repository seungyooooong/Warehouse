//
//  LoginStore.swift
//  TCAPractice
//
//  Created by 최승용 on 7/24/24.
//

import Foundation
import ComposableArchitecture

struct LoginStore: Reducer {
    struct State: Equatable {
        var isLogin: Bool
    }
    
    enum Action: Equatable {
        case doAppleLogin
        case appleLoginResponse(Data)
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .doAppleLogin:
            return .run { send in
              let (data, _) = try await URLSession.shared.data(
                from: URL(string: "https://api.runus.site/api/v1/examples/data")! // 추후 test API 나오면 확인 필요
              )
              await send(
                .appleLoginResponse(data)
              )
            } // 본래 Environmet 객체가 가지고 있던 내용
        case let .appleLoginResponse(data):
            print(String(decoding: data, as: UTF8.self))
            guard let data: ResponseModel = JSONConverter.decodeJson(data: data) else {
                print("decoding error")
                return .none
            }
            state.isLogin = data.success
            return .none
        }
    }

}
