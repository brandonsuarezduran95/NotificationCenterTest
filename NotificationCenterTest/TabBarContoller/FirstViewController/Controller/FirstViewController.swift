//
//  FirstViewController.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let addButton = UIButton()
    let resetButton = UIButton()
    
    let countLabel = UILabel()
    let observerLabel = UILabel()
    
    let buttonsStackView = UIStackView()
    let containerStackView = UIStackView()
    
    var count = 0
    let notificationCenter = NotificationCenter.default

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpContainerStackView()
        setUpLabels()
        setUpButtonsStack()
        setUpButtons()
        subscribeToNotificationCenter()
    }
    
    // a Good practice is to always remove the observers on every class that are declared as part of their deinitializer
    deinit {
        notificationCenter.removeObserver(self)
    }
}
