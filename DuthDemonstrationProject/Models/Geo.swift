//
//  Geo.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

struct Geo: Codable {
    let latitude: String
    let longitude: String
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lng"
    }
}
