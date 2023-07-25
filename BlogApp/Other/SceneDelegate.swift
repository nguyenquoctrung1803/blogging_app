//
//  SceneDelegate.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 25/07/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScence = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScence)
        
        // Todo: Update Vc to sign in vc if not signed in
        let vc: UIViewController
        if AuthManager.shared.isSignedIn {
            vc = TabbarViewController()
        }else {
            let signInVC = SignInViewController()
            signInVC.navigationItem.largeTitleDisplayMode = .always
            let navVC = UINavigationController(rootViewController: signInVC)
            navVC.navigationBar.prefersLargeTitles = true
            
            vc = navVC
        }
        window.rootViewController = vc
        self.window = window
        
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

