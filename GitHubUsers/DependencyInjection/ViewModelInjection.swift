//
//  ViewModelInjection.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
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
