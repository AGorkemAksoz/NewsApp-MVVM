//
//  NewsService.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation

final class NewsService {
    let networkManager = NetworkManager()

    func getNewses(completion: @escaping ([Article]?, String?) -> ()) {
        let url = URLBuilder().build()
        networkManager.request(type: News.self, url: url, method: .get) { response in
            switch response {
            case .success(let items):
                completion(items.articles, nil)
            case .failure(let failure):
                print(failure.rawValue)
                completion(nil, failure.rawValue)
            }
        }
        
    }
    

}
