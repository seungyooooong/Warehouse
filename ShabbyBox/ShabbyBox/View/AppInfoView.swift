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
                        AppInfoContent(name: "Developer", content: "seungyooooong")
                        AppInfoContent(name: "Compatibility", content: "iOS16.0")
                        AppInfoContent(name: "Version", content: "1.0.0")
                        AppInfoContent(name: "Notion", linkLabel: "Go to Warehouse TIL", linkDestination: "https://www.notion.so/seungyooooong/Warehouse-5f82fe5b62814bb7b8482377b70ec4c3")
                        AppInfoContent(name: "Github", linkLabel: "Go to Repository", linkDestination: "github.com/seungyooooong/Warehouse")
                    } label: {
                        AppInfoLabel(labelText: "Application", labelImage: "apps.iphone")
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
