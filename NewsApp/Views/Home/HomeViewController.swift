//
//  ViewController.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import UIKit

protocol HomeViewControllerInterface: AnyObject {
    func configureVC()
}

class HomeViewController: UIViewController {
    private let homeViewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeViewModel.view = self
        homeViewModel.viewDidLoad()
    }

}

extension HomeViewController: HomeViewControllerInterface {
    func configureVC() {
        view.backgroundColor = .systemMint
    }
    
}

