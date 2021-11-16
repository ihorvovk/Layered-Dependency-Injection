//
//  UserListViewModel.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation
import Combine

class UserListViewModel: ObservableObject {

    @Published var users: [User]
    
    init() {
        users = []
        
        appState.$users.sink(receiveValue: { [weak self] users in
            self?.users = users
        }).store(in: &cancelBag)
        
        service.loadUsers()
    }
    
    // MARK: - Private
    
    @Injected(\.viewModel.appState) private var appState
    @Injected(\.viewModel.gitHubInteractor) private var service
    
    private var cancelBag = Set<AnyCancellable>()
}
