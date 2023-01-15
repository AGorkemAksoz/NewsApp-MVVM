//
//  NewsService.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation

final class NewsService {
    let networkManager = NetworkManager()
    let urlBuilder = URLBuilder()
    
    func getNews(completion: @escaping ([News]?, String?) -> ()) {
        
        networkManager.request(type: [News].self, url: urlBuilder.build(), method: .get) { response in
            switch response {
            case .success(let items):
                completion(items, nil)
            case .failure(let failure):
                completion(nil, failure.rawValue)
            }
        }
        
    }
}
