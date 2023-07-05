//
//  SecondViewController + notifications.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension SecondViewController {
    func subscribeToNotificationCenter() {
        notificationCenter.addObserver(self, selector: #selector(didReceiveCountUpdate(_ :)), name: .countDidChange, object: nil)
        notificationCenter.addObserver(self, selector: #selector(didReceiveResetCount), name: .countDidReset, object: nil)
    }
    
    @objc func didReceiveCountUpdate(_ notification: NSNotification) {
        count += 1
        observerLabel.text = "The count is: \(count)"
        // you can pass objects, you just need to type cast the passed object, you get the object from the notification.object.
        let newCount = notification.object as! Int
        print("The passed count is: \(newCount)")
    }
    
    @objc func didReceiveResetCount() {
        count = 0
        observerLabel.text = "The count is: \(count)"
    }
}
