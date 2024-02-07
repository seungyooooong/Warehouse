//
//  AppInfo.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/29/24.
//

import SwiftUI

struct AppInfo: View {
    var body: some View {
        VStack {
            GroupBox {
                AppInfoContent(name: "Developer", content: "seungyooooong")
                AppInfoContent(name: "Compatibility", content: "iOS16.0")
                AppInfoContent(name: "Version", content: "1.0.0")
                AppInfoContent(name: "Notion", linkLabel: "Go to Warehouse TIL", linkDestination: "notion.so/seungyooooong/Warehouse-5f82fe5b62814bb7b8482377b70ec4c3")
                AppInfoContent(name: "Github", linkLabel: "Go to Repository", linkDestination: "github.com/seungyooooong/Warehouse")
            } label: {
                AppInfoLabel(labelText: "Application", labelImage: "apps.iphone")
            }
            .padding(.vertical)
            Spacer()
        }
    }
}

#Preview {
    AppInfo()
}
