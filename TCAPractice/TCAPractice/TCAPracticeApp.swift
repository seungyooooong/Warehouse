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
    
    var body: some Scene {
        WindowGroup {
            InitView().environmentObject(UserDefaults())
        }
    }
}
