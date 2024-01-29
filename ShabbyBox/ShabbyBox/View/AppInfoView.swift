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
            AppInfo()
                .padding()
            ScrollView(.vertical, showsIndicators: false) {
                AppInfo()
            }
            .padding()
        }
    }
}

#Preview {
    AppInfoView()
}
