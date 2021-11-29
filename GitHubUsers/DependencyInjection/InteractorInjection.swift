//
//  InteractorInjection.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation

class InteractorInjection: InteractorInjectionProtocol {
    
    let appState: AppState
    let network = Network()
    
    init(appState: AppState) {
        self.appState = appState
    }
}
