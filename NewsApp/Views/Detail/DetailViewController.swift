//
//  DetailViewController.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 22.01.2023.
//

import UIKit
import WebKit

protocol DetailViewControllerInterface {
    func configureVC()
}

class DetailViewController: UIViewController {
    
    private let detailViewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailViewModel.view = self
    }
    
}

extension DetailViewController: DetailViewControllerInterface {
    func configureVC() {
        view.backgroundColor = .systemCyan
    }
    
    
}
