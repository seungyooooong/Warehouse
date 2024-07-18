//
//  Feature.swift
//  TCAPractice
//
//  Created by 최승용 on 7/18/24.
//

import Foundation
import ComposableArchitecture

struct Feature: Reducer {
    struct State: Equatable {
        var count: Int = 0
    }
    
    enum Action: Equatable {
        case plusButtonTap
        case minusButtonTap
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .plusButtonTap:
            // 더하기 작업 구현
            state.count += 1
            return .none
            
        case .minusButtonTap:
            // 빼기 작업 구현
            state.count -= 1
            return .none
        }
    }

    // Parent로서 동작할 경우
    /*
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
                
            }
        }
    }
    */
}
