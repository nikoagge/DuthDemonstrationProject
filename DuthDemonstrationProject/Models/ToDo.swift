//
//  ToDo.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

struct ToDo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
