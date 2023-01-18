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
    var news = [News]()
    
}

extension HomeViewModel: HomeViewModelInterface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureTableView()
    }
    
    func getNews() {
        
    }
    
}
