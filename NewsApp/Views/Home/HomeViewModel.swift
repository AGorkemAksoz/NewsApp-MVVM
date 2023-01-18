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
}

final class HomeViewModel {
    weak var view: HomeViewControllerInterface?
}

extension HomeViewModel: HomeViewModelInterface {
    func viewDidLoad() {
        view?.configureVC()
    }
    
    
}
