//
//  ContentView.swift
//  TCAPractice
//
//  Created by 최승용 on 7/18/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<Feature>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                Text("\(viewStore.count)")
                    .font(.title)
                
                HStack {
                    Button("-") {
                        // - Action
                        viewStore.send(.minusButtonTap)
                    }
                    Button("+") {
                        // + Action
                        viewStore.send(.plusButtonTap)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    ContentView(store: Store(initialState: Feature.State(), reducer: {
        Feature()
    }))
}
