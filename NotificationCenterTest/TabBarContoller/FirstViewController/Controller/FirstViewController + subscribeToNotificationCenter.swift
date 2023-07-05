//
//  FirstViewController + subscribeToNotificationCenter.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension FirstViewController {
    
    func subscribeToNotificationCenter() {
        notificationCenter.addObserver(self, selector: #selector(didReceiveCountUpdate(_ :)), name: .countDidUpdate, object: nil)
    }
    
    @objc func didReceiveCountUpdate(_ notification: NSNotification) {
        count += 1
        observerLabel.text = "The new count is: \(count)"
        print(notification.userInfo?["userInfo"] as? [String: Any] ?? [:])
    }
    
    @objc func printSomeClassTest(_ notification: NSNotification) {
        print("SomeClass broadcasted a message")
    }
    
}
