//
//  ProfileViewController.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 25/07/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: #selector(didTapSignOut))
    }
    
    
    @objc private func didTapSignOut() {
        
    }
    

   

}
