//
//  ViewController.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 15.01.2023.
//

import UIKit

protocol HomeViewControllerInterface: AnyObject {
    func configureVC()
    func configureTableView()
}

class HomeViewController: UIViewController {
    private let tableView: UITableView = UITableView()
    private let homeViewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeViewModel.view = self
        homeViewModel.viewDidLoad()
    }

}

extension HomeViewController: HomeViewControllerInterface {
    
    func configureVC() {
        title = "News"
        view.backgroundColor = .systemCyan
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemCyan
        

        
        NSLayoutConstraint.activate([
            tableView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor ),
            tableView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
//        cell.textLabel?.text = homeViewModel.todos[indexPath.row].title
        cell.backgroundColor = .systemCyan
        return cell
    }
    
    
}

