//
//  ShabbyBoxApp.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/19/24.
//

import SwiftUI
import SwiftData

@main
struct ShabbyBoxApp: App {
    var body: some Scene {
        WindowGroup {
//            MainView()
            SwiftDataView()
                .modelContainer(for: [TestData.self])
        }
    }
}
