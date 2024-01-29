//
//  AppInfoLabel.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/29/24.
//

import SwiftUI

struct AppInfoLabel: View {
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Image(systemName: labelImage)
                .hTrailing()
        }
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
