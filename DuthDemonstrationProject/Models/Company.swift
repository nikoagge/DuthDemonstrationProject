//
//  Company.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let businessService: String
    
    enum CodingKeys: String, CodingKey {
        case name, catchPhrase
        case businessService = "bs"
    }
}
