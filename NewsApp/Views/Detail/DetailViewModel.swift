//
//  DetailViewModel.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 22.01.2023.
//

import Foundation


protocol DetailViewModelInterface {
    var view: DetailViewControllerInterface? {get set}
    
    func viewDidLoad()
}

final class DetailViewModel {
    var view: DetailViewControllerInterface?
}

extension DetailViewModel: DetailViewModelInterface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureWebView()
    }
    
    
}
