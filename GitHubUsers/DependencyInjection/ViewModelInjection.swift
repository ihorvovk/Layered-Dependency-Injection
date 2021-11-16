//
//  ViewModelInjection.swift
//  ShopmonkeyApp
//
//  Created by Ihor Vovk on 02.11.2021.
//  Copyright © 2021 ShopMonkey. All rights reserved.
//

import Foundation

class ViewModelInjection: ViewModelInjectionProtocol {

    let appState: AppState
    
    lazy private(set) var gitHubInteractor: GitHubInteractorProtocol = GitHubInteractor()
    
    init(appState: AppState) {
        self.appState = appState
    }
}

class MockViewModelInjection: ViewModelInjectionProtocol {

    let appState: AppState
    
    lazy private(set) var gitHubInteractor: GitHubInteractorProtocol = MockGitHubInteractor()
    
    init(appState: AppState) {
        self.appState = appState
    }
}
