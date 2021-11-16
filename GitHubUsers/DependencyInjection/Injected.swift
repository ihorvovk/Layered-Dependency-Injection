//
//  Injected.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation

@propertyWrapper
struct Injected<T> {

    private let keyPath: KeyPath<DependencyInjection, T>
    
    var wrappedValue: T {
        DependencyInjection.assembly[keyPath: keyPath]
    }
    
    init(_ keyPath: KeyPath<DependencyInjection, T>) {
        self.keyPath = keyPath
    }
}
