//
//  Address.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipCode: String
    let geo: Geo
    
    enum CodingKeys: String, CodingKey {
        case street, suite, city, geo
        case zipCode = "zipcode"
    }
}
