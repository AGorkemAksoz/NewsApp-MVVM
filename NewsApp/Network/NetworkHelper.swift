//
//  NetworkHelper.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import Foundation


enum ErrorTypes: String, Error {
    case invalidData = "Invalid data"
    case invalidURL = "Invalid URL"
    case generalError = "An error happened"
}

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
}
