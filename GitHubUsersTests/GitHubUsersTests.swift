//
//  GitHubUsersTests.swift
//  GitHubUsersTests
//
//  Created by Ihor Vovk on 10.11.2021.
//

import XCTest
@testable import GitHubUsers

class GitHubUsersTests: XCTestCase {

    override func setUpWithError() throws {
        let appState = AppState()
        DependencyInjection.assembly = .init(interactor: InteractorInjection(appState: appState), viewModel: MockViewModelInjection(appState: appState))
    }

    func testUserListViewModel() throws {
        let viewModel = UserListViewModel()
        
        XCTAssertEqual(viewModel.users.count, 2)
        XCTAssertEqual(viewModel.users.first?.nickname, "First")
        XCTAssertEqual(viewModel.users.last?.nickname, "Second")
    }
}
