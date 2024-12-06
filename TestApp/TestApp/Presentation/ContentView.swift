//
//  ContentView.swift
//  TestApp
//
//  Created by 최승용 on 7/22/24.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.data)
            Button {
                viewModel.changeData()
            } label: {
                Text("changeData")
            }
        }
        .padding()
        .onAppear {
            viewModel.getData()
        }
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
