//
//  JSONConverter.swift
//  TCAPractice
//
//  Created by seungyooooong on 7/30/24.
//

import Foundation

final class JSONConverter {
    static func decodeJson<T: Codable>(data: Data) -> T? {
        do {
            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        } catch {
            return nil
        }
    }
    
    static func encodeJson<T: Codable>(param: T) -> Data? {
        do {
            let result = try JSONEncoder().encode(param)
            return result
        } catch {
            return nil
        }
    }
}
