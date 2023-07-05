//
//  Extension + Notification.Name.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/4/23.
//

import Foundation

extension NSNotification.Name {
    
    // a good practice is have all the notification names declared as an extension, so that it is available as default values.
    
    static var countDidUpdate: Notification.Name {
        return .init(rawValue: "countDidUpdate")
    }
    
    static var countDidReset: Notification.Name {
        return .init("countDidReset")
    }
    
    static var countDidChange: Notification.Name {
        return .init("countDidChange")
    }
    
    static let someClassTest: Notification.Name = .init("someClassTest")
}
