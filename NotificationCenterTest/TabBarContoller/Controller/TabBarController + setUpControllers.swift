//
//  TabBarController + setUpControllers.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension TabBarController {
    func setUpControllers() {
        
        let firstController = setUpFirstViewController()
        let secondController = setUpSecondViewController()
        
        self.setViewControllers([firstController, secondController], animated: true)
    }
    
    func setUpFirstViewController() -> UINavigationController {
        
        // UIViewController
        let firstViewController = FirstViewController()
        firstViewController.view.backgroundColor = .systemBlue
        
        // UINavigationController
        let navigationController = UINavigationController(rootViewController: firstViewController)
        
        firstViewController.navigationController?.navigationBar.prefersLargeTitles = true
        firstViewController.title = "First"
        firstViewController.tabBarItem = .init(title: "First", image: UIImage(systemName: "circle.lefthalf.filled"), tag: 0)
        

        return navigationController
    }
    
    func setUpSecondViewController() -> UINavigationController {
        
        // UIViewController
        let secondViewController = SecondViewController()
        secondViewController.view.backgroundColor = .systemYellow
        
        // UINavigationController
        let navigationController = UINavigationController(rootViewController: secondViewController)
        
        secondViewController.navigationController?.navigationBar.prefersLargeTitles = true
        secondViewController.title = "Second"
        secondViewController.tabBarItem = .init(title: "Second", image: UIImage(systemName: "circle.righthalf.filled"), tag: 0)
        
        return navigationController
    }
}
