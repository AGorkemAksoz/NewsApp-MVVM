//
//  APIURLs.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation

protocol URLBuilderInterface {
    func build() -> String
}

final class URLBuilder: URLBuilderInterface{
    
    private let baseURL: String = "https://newsapi.org/v2"
    private let path: String = "/everything?q=turkey&apiKey=c5defaeacbbc4f70b4e4c6919736081c"
    
    func build() -> String {
        baseURL + path
    }
    
    
}
