//
//  NewsTableViewCell.swift
//  NewsApp
//
//  Created by Ali Görkem Aksöz on 22.01.2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    static let identifier: String = "NewsTableViewCell"
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
//    private let imageView = UIImage()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure() {
        self.addSubview(titleLabel)
        titleLabel.numberOfLines = 1
        titleLabel.font = .boldSystemFont(ofSize: 24)
        self.addSubview(descriptionLabel)
        descriptionLabel.numberOfLines = 2
        descriptionLabel.font = .systemFont(ofSize: 16, weight: .light)
        
        makeTitleLabel()
        makeDescLabel()
        
    }
    
    func setup(article: Article) {
        titleLabel.text = article.title
        descriptionLabel.text = article.description
    }
    
    func makeTitleLabel() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    func makeDescLabel() {
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }

}
