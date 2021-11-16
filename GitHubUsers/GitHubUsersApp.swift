//
//  GitHubUsersApp.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import SwiftUI

@main
struct GitHubUsersApp: App {
    
    var body: some Scene {
        WindowGroup {
            UserListView(viewModel: UserListViewModel())
        }
    }
}
