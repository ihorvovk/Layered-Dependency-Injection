//
//  UserListView.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import SwiftUI

struct UserListView: View {
    
    init(viewModel: UserListViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List {
            ForEach(viewModel.users) { user in
                Text(user.nickname)
            }
        }
    }
    
    // MARK: - Private
    
    @StateObject private var viewModel: UserListViewModel
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        UserListView(viewModel: UserListViewModel())
    }
}
