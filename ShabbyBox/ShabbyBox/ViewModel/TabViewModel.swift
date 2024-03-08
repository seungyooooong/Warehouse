//
//  TabViewModel.swift
//  ShabbyBox
//
//  Created by 최승용 on 3/8/24.
//

import Foundation

class TabViewModel: ObservableObject {
    @Published var tagIndex: Int = 0
    
    func setTagIndex(tagIndex: Int) {
        self.tagIndex = tagIndex
    }
}
