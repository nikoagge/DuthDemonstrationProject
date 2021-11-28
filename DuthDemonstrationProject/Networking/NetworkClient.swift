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
    
    func getUsers(with completion: @escaping ([User]?, Error?) -> ()) {
        let url = URL(string: baseURL + Path.posts.rawValue)
        guard let url = url else { return }
        DispatchQueue.main.async {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    completion(nil, error)
                }
                
                if error == nil, let data = data {
                    let users = try? JSONDecoder().decode([User].self, from: data)
                    completion(users, nil)
                }
            }.resume()
        }
    }
}

private extension NetworkClient {
    func getGenericRequest<T: Codable> (for url: URL?, expectingTypeToDecode: T.Type, with completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = url else {
            completion(.failure(NetworkingError.invalidURL))
            
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.failure(NetworkingError.invalidData))
                }
                
                return
            }
            
            do {
                let result = try JSONDecoder().decode(expectingTypeToDecode, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
