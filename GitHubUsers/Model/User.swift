//
//  User.swift
//  GitHubUsers
//
//  Created by Ihor Vovk on 10.11.2021.
//

import Foundation

struct User: Identifiable, Decodable {
    
    let id: Int
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case nickname = "login"
    }
}
