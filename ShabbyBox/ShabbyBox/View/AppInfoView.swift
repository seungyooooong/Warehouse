//
//  AppInfoView.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/27/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        ViewThatFits(in: .vertical) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    GroupBox {
                        Text("Developer: seungyooooong")
                        Text("Compatibility: iOS16.0")
                        Text("Version: 1.0.0")
                        Text("Notion: Warehouse")
                        Text("Github: Go to Repository")
                    } label: {
                        Text("AppInfo")
                            .fontWeight(.bold)
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    AppInfoView()
}
