//
//  DependencyInjection+SM.swift
//  ShopmonkeyApp
//
//  Created by Ihor Vovk on 09.11.2021.
//  Copyright © 2021 ShopMonkey. All rights reserved.
//

import Foundation

extension DependencyInjection {
    
    static var assembly: DependencyInjection = {
        let appState = AppState()

        if ProcessInfo.processInfo.isRunningForPreviews {
            return .init(interactor: InteractorInjection(appState: appState), viewModel: MockViewModelInjection(appState: appState))
        } else {
            return .init(interactor: InteractorInjection(appState: appState), viewModel: ViewModelInjection(appState: appState))
        }
    }()
}

extension ProcessInfo {
    
    var isRunningForPreviews: Bool {
        ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
}
