//
//  WebService.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

enum NetworkError: Error {
    case badRequest
    case decodingError
}

import Foundation

class WebService {
    func get<T: Decodable>(url: URL, parse: (Data) -> T?) async throws -> T {
        let (data, urlResponse) = try await URLSession.shared.data(from: url)
        guard
            let statusCode = (urlResponse as? HTTPURLResponse)?.statusCode,
            statusCode >= 200 && statusCode < 300
        else {
            throw NetworkError.badRequest
        }
        
        guard let result = parse(data) else {
            throw NetworkError.decodingError
        }
        
        return result
    }
}
