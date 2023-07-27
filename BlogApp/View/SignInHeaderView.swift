//
//  SignInHeaderView.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 26/07/2023.
//

import UIKit

class SignInHeaderView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Startany"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        imageView.backgroundColor = .systemPink
        
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Explore millions of articles!"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        addSubview(label)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size: CGFloat = width/4
        
        imageView.frame = CGRect(x: (width - size)/2 , y: 10, width: size, height: size)
        label.frame = CGRect(x: 20, y: imageView.bottom + 20, width: width - 40, height: height - size - 30)
    }
    
    
    
}
