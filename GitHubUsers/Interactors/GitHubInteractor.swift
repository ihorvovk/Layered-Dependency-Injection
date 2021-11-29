//
//  GitHubInteractor.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation
import Combine

protocol GitHubInteractorProtocol {
    func loadUsers()
}

class GitHubInteractor: GitHubInteractorProtocol {
    
    func loadUsers() {
        let url = URL(string: "https://api.github.com/users")!
        return network.load(url: url)
            .tryMap { try JSONDecoder().decode([User].self, from: $0) }
            .receive(on: DispatchQueue.main)
            .sink { completion in
            } receiveValue: { [weak self] users in
                self?.appState.users = users
            }.store(in: &cancelBag)
    }
    
    // MARK: - Private
    
    @Injected(\.interactor.appState) private var appState
    @Injected(\.interactor.network) private var network
    
    private var cancelBag = Set<AnyCancellable>()
}

class MockGitHubInteractor: GitHubInteractorProtocol {
    
    func loadUsers() {
        appState.users = [User(id: 1, nickname: "First"), User(id: 2, nickname: "Second")]
    }
    
    // MARK: - Private
    
    @Injected(\.interactor.appState) private var appState
}
