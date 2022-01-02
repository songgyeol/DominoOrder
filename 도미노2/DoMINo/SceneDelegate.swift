//
//  SceneDelegate.swift
//  DoMINo
//
//  Created by 송결 on 2021/12/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let tabViewController = UITabBarController()
        window?.rootViewController = tabViewController
        window?.makeKeyAndVisible()
        
        let tabItem1 = UITabBarItem(title: "Category", image: UIImage(named: "domino's"), tag: 0)
        let tabItem2 = UITabBarItem(title: "WishList", image: UIImage(named: "wishlist"), tag: 1)
        
        let categoryView = CategoryViewcontroller()
        let wishListView = WishListViewcontrollerViewController()
        
        let navigationViewController1 = UINavigationController(rootViewController: categoryView)
        let navigationViewController2 = UINavigationController(rootViewController: wishListView)
        
        tabViewController.setViewControllers([navigationViewController1, navigationViewController2], animated: true)
        categoryView.tabBarItem = tabItem1
        wishListView.tabBarItem = tabItem2
        
        navigationViewController1.navigationBar.topItem?.title = "Domino's"
        navigationViewController2.navigationBar.topItem?.title = "Wish List"
        
    }

    
    
    
    
    
    
    
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

