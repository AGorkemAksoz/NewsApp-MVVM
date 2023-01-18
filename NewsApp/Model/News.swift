//
//  News.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//


import Foundation


// MARK: - News
struct News: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

// MARK: - Article
struct Article: Codable {
    let source: Source?
    let author: String?
    let title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

// MARK: - Source
struct Source: Codable {
    let id, name: String?
}





//struct News: Codable {
//    let userID, id: Int?
//    let title: String?
//    let completed: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case userID = "userId"
//        case id, title, completed
//    }
//}


