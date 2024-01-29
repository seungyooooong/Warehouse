//
//  AppInfoContent.swift
//  ShabbyBox
//
//  Created by 최승용 on 1/29/24.
//

import SwiftUI

struct AppInfoContent: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                if content != nil {
                    Text(content ?? "noValue")
                        .fontWeight(.bold)
                        .foregroundColor(Color("oppositeColor"))
                        .hTrailing()
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                            .hTrailing()
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(Color("mainColor"))
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        AppInfoContent(name: "Sample", content: "Test")
        AppInfoContent(name: "Sample", linkLabel: "TestLink", linkDestination: "TestDestination")
    }
}
