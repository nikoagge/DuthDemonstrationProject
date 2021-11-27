//
//  User.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}
