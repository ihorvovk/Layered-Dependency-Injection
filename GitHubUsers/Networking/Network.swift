//
//  Network.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation
import Combine

class Network {
    
    func load(url: URL) -> AnyPublisher<Data, URLError> {
        session.dataTaskPublisher(for: url)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
    
    // MARK: - Private
    
    private let session = URLSession(configuration: .default)
}
