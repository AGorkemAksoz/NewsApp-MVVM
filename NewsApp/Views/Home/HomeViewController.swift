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
    func reloadTable()
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
    func reloadTable() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

    func configureVC() {
        title = "News"
        view.backgroundColor = .systemCyan
        self.tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: NewsTableViewCell.identifier)
        tableView.rowHeight = 160
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray
        

        
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
        return homeViewModel.news.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.identifier, for: indexPath) as! NewsTableViewCell
        cell.setup(article: homeViewModel.news[indexPath.row])
        cell.backgroundColor = .systemGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.setup(article: homeViewModel.news[indexPath.row])
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

