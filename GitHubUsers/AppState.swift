//
//  AppState.swift
//  DependencyInjection
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    
    @Published var users: [User] = []
}
