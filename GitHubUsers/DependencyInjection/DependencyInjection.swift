//
//  DependencyInjection.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation

protocol InteractorInjectionProtocol {
    
    var appState: AppState { get }
    var network: Network { get }
}

protocol ViewModelInjectionProtocol {
    
    var appState: AppState { get }
    var gitHubInteractor: GitHubInteractorProtocol { get }
}

final class DependencyInjection {
    
    private(set) var interactor: InteractorInjectionProtocol
    private(set) var viewModel: ViewModelInjectionProtocol
    
    init(interactor: InteractorInjectionProtocol, viewModel: ViewModelInjectionProtocol) {
        self.interactor = interactor
        self.viewModel = viewModel
    }
}
