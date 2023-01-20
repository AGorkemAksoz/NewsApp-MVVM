//
//  HomeViewModel.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 18.01.2023.
//

import Foundation

protocol HomeViewModelInterface {
    var view: HomeViewControllerInterface? { get set }
    
    func viewDidLoad()
    func getNews()
}

final class HomeViewModel {
    weak var view: HomeViewControllerInterface?
    var news = [Article]()
    private let newsService = NewsService()
    
}

extension HomeViewModel: HomeViewModelInterface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureTableView()
        getNews()
        
    }
    
    func getNews() {
        newsService.getNews { items, error in
            if let items = items {
                self.news = items
                self.view?.reloadTable()
//                print(self.news[1].title!)
                
            }
        }
    }
    
}
