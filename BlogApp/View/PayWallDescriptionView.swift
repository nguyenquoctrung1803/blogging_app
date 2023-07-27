//
//  PayWallDescriptionView.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 26/07/2023.
//

import UIKit

class PayWallDescriptionView: UIView {

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .medium)
        label.numberOfLines = 0
        label.text = "Join Thoughts Premium to read unlimited articles and browse thounsands of posts."
        return label
    }()
    
    
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .thin)
        label.numberOfLines = 0
        label.text = "$4.99 / month"
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        backgroundColor = .systemYellow
        addSubview(descriptionLabel)
        addSubview(priceLabel)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        descriptionLabel.frame = CGRect(x: 20, y: 0, width: width - 40, height: height/2)
        priceLabel.frame = CGRect(x: 20, y: height/2, width: width - 40, height: height/2)
    }
    
}

