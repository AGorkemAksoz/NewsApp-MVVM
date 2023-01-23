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
    func configureWebView()
    func setup(article: Article)
}

class DetailViewController: UIViewController {
    
    private let detailViewModel = DetailViewModel()
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailViewModel.view = self
        detailViewModel.viewDidLoad()
    }
    
}

extension DetailViewController: DetailViewControllerInterface {
    
    func configureVC() {
        view.backgroundColor = .systemCyan
        title = "News Detail"
    }
    
    func configureWebView() {
//        webView = WKWebView()
//        self.view = webView
//
//        let request = URLRequest(url: URL(string: "https://apple.com")!)
//        webView.load(request)
        
    }
    
    func setup(article: Article) {
        webView = WKWebView()
        self.view = webView

        let request = URLRequest(url: URL(string: article.url!)!)
        
        DispatchQueue.main.async {
            self.webView.load(request)
        }
        
    }
    
    
}
