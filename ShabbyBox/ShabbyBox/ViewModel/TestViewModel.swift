//
//  TestViewModel.swift
//  ShabbyBox
//
//  Created by seungyooooong on 12/6/24.
//

import Foundation
import SwiftData

@Observable
class TestViewModel {
    var descriptor: FetchDescriptor<TestData> {
        var descriptor = FetchDescriptor<TestData>()
        descriptor.predicate = #Predicate<TestData> { $0.content.contains("Data") }
        return descriptor
    }
    
    func getDatasContains(_ with: String) -> FetchDescriptor<TestData> {
        var descriptor = FetchDescriptor<TestData>()
        descriptor.predicate = #Predicate<TestData> { $0.content.contains(with) }
        return descriptor
    }
}
