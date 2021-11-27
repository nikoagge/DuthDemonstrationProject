//
//  NetworkClient.swift
//  DuthDemonstrationProject
//
//  Created by Nikos Aggelidis on 27/11/21.
//

import Foundation

class NetworkClient {
    static let shared = NetworkClient()
    
    let baseURL = "https://jsonplaceholder.typicode/com/"
    
    func downloadPosts(with completion) {
        let url = URL(string: baseURL + Path.posts.rawValue)
        guard let url = url else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            <#code#>
        }
    }
}
