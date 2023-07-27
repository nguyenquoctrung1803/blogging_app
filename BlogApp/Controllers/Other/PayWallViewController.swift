//
//  PayWallViewController.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 26/07/2023.
//

import UIKit



class PayWallViewController: UIViewController {
    
    
    private let header = PayWallView()
    
    private let heroView = PayWallDescriptionView()
    
    private let buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Subscribe", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private let restorebutton: UIButton = {
        let button = UIButton()
        button.setTitle("Restore Purchase", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    
    private let termsService: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.textAlignment = .center
        textView.textColor = .secondaryLabel
        textView.font = .systemFont(ofSize: 14)
        textView.text = "This is an auto-renewable Subscription. It will be charged to your iTunes account before each pay period. You can cancel anytime by going your Setting -> SubScriptions. Restore purchase if previously subscribed."
        return textView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Thoughts Premium"
        view.addSubview(header)
        view.addSubview(buyButton)
        view.addSubview(restorebutton)
        view.addSubview(termsService)
        view.addSubview(heroView)
        
        setUpButton()
        setUpCloseButton()
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        header.frame = CGRect(x: 0,
                              y: view.safeAreaInsets.top,
                              width: view.width,
                              height: view.height/3.2
        )
        termsService.frame = CGRect(x: 10, y: view.height - 100, width: view.width - 20, height: 100)
        restorebutton.frame = CGRect(x: 25, y: termsService.top - 70, width: view.width - 50, height: 50)
        buyButton.frame = CGRect(x: 25, y: restorebutton.top - 60, width: view.width - 50, height: 50)
        heroView.frame = CGRect(x: 0, y: header.bottom, width: view.width, height: buyButton.top - header.bottom)
    }
    
    private func setUpButton() {
        buyButton.addTarget(self, action: #selector(didTapSubscribe), for: .touchUpInside)
        restorebutton.addTarget(self, action: #selector(didTapRestore), for: .touchUpInside)
    }
    
    @objc private func didTapSubscribe() {
        
    }
    
    @objc private func didTapRestore() {
        
    }
    
    private func setUpCloseButton () {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close,
                                                            target: self,
                                                            action: #selector(didTapClose)
        )
    }
    
    @objc private func didTapClose () {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
