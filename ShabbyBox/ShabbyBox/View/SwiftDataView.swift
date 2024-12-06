//
//  SwiftDataView.swift
//  ShabbyBox
//
//  Created by seungyooooong on 12/6/24.
//

import SwiftUI
import SwiftData

struct SwiftDataView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var newItemTitle: String = ""
    @State private var viewModel = TestViewModel()
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        List {
            if let items = try? modelContext.fetch(viewModel.getDatasContains("Data")) {
                ForEach(items) { data in
                    Text(data.content)
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        modelContext.delete(items[index])
                    }
                    try? modelContext.save()
                }
            }
        }
        VStack {
            TextField("Enter title", text: $newItemTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Add Item") {
                let newItem = TestData(content: newItemTitle)
                modelContext.insert(newItem)
                try? modelContext.save()
                newItemTitle = ""  // 입력 후 텍스트필드 초기화
            }
        }
    }
}

#Preview {
    SwiftDataView()
}
