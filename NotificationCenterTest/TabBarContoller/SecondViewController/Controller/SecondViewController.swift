//
//  SecondViewController.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    let observerLabel = UILabel()
    let incrementButton = UIButton()
    var count = 0
    
    let notificationCenter = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
        setUpButton()
        subscribeToNotificationCenter()
    }
    
    deinit {
        notificationCenter.removeObserver(self)
    }
}

