//
//  InteractorInjection.swift
//  ShopmonkeyApp
//
//  Created by Ihor Vovk on 02.11.2021.
//  Copyright © 2021 ShopMonkey. All rights reserved.
//

import Foundation

class InteractorInjection: InteractorInjectionProtocol {
    
    let appState: AppState
    let network = Network()
    
    init(appState: AppState) {
        self.appState = appState
    }
}
