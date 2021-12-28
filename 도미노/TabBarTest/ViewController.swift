//
//  ViewController.swift
//  TabBarTest
//
//  Created by 송결 on 2021/11/28.
//

import UIKit

class ViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    func setTabBar() {
        
        
        let tabOne = TabOneViewController()
        tabOne.title = "category"
        tabOne.tabBarItem.image = UIImage(named: "domino's")
        
        let tabTwo = TabTwoViewController()
        tabTwo.title = "wishlist"
        tabTwo.tabBarItem.image = UIImage(named: "wishlist")
        
        viewControllers = [tabOne, tabTwo]
        
        //present(tabBar, animated: true)
        
    }
    
    
}
   


