//
//  Injected.swift
//  ShopmonkeyApp
//
//  Created by Ihor Vovk on 03.11.2021.
//  Copyright © 2021 ShopMonkey. All rights reserved.
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
