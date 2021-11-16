//
//  DependencyInjection.swift
//  ShopmonkeyApp
//
//  Created by Ihor Vovk on 02.11.2021.
//  Copyright © 2021 ShopMonkey. All rights reserved.
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
