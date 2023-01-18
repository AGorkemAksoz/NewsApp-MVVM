//
//  NewsService.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation

final class NewsService {
    let networkManager = NetworkManager()

    
    
    func getNews(completion: @escaping (News?, String?) -> ()) {
        let url = URLBuilder().build()
        networkManager.request(type: News.self, url: url, method: .get) { response in
            switch response {
            case .success(let items):
                completion(items, nil)
            case .failure(let failure):
                print(failure.rawValue)
                completion(nil, failure.rawValue)
            }
        }
        
    }
}
