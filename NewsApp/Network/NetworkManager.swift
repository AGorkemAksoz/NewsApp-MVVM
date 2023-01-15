//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation

final class NetworkManager {
  
    func request<T: Codable>(type: T.Type, url: String, method: HTTPMethods, completion: @escaping (Result<T, ErrorTypes>) -> ()) {
        let session = URLSession.shared
        
        if let url = URL(string: url) {
            var request = URLRequest(url: url)
            request.httpMethod = method.rawValue
            
            let dataTask = session.dataTask(with: request) { data, respone, error in
                if let _ = error {
                    completion(.failure(.generalError))
                } else if let data = data {
                    self.handleWithData(data: data) { response in
                        completion(response)
                    }
                } else{
                    completion(.failure(.invalidURL))
                }
            }
            
            dataTask.resume()
        }
    }
    
    func handleWithData<T: Codable>(data: Data, completion: @escaping (Result<T, ErrorTypes>) -> ()) {
        do {
            let result = try JSONDecoder().decode(T.self, from: data)
            completion(.success(result))
        } catch  {
            completion(.failure(.invalidData))
        }
    }
}
