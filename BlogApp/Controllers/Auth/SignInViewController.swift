//
//  SignInViewController.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 25/07/2023.
//

import UIKit

class SignInViewController: UIViewController {

    private let headerView = SignInHeaderView()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.keyboardType = .emailAddress
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        field.leftViewMode = .always
        field.placeholder = "Email Address"
        field.backgroundColor = .secondarySystemBackground
        field.layer.cornerRadius = 8
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.keyboardType = .emailAddress
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        field.leftViewMode = .always
        field.placeholder = "Password"
        field.backgroundColor = .secondarySystemBackground
        field.isSecureTextEntry = true
        field.layer.cornerRadius = 8
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        return field
    }()
    
    
    private let signInButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    
    private let createAccountButton = {
        let button = UIButton()
        
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.link , for: .normal)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Sign In"
        view.backgroundColor = .systemBackground
        view.addSubview(headerView)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(signInButton)
        view.addSubview(createAccountButton)
        
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        createAccountButton.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height / 5)
        emailField.frame = CGRect(x: 20, y: headerView.bottom, width: view.width - 40, height: 50)
        passwordField.frame = CGRect(x: 20, y: emailField.bottom + 10, width: view.width - 40, height: 50)
        signInButton.frame = CGRect(x: 20, y: passwordField.bottom + 10, width: view.width - 40, height: 50)
        createAccountButton.frame = CGRect(x: 20, y: signInButton.bottom + 30, width: view.width - 40, height: 50)
    }
    
    
    @objc func didTapSignIn() {
            guard let email = emailField.text, !email.isEmpty, let password = passwordField.text, !password.isEmpty else {
                return
            }


            AuthManager.shared.signIn(email: email, password: password) { [weak self] success in
                
                if success {
                    DispatchQueue.main.async {
                        UserDefaults.standard.set(email, forKey: "email")
                        let vc = TabbarViewController()
                        vc.modalPresentationStyle = .fullScreen
                        self?.present(vc, animated: true)
                    }
                }else {
                    print("Failed to Login!")
                }
               
            }
        }
    
    @objc func didTapCreateAccount () {
        let vc = SignUpViewController()
        vc.title = "Create Account"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}
