//
//  FirstViewController + setUpLabels.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension FirstViewController {
    func setUpLabels() {
        setUpCountLabel()
        setUpObserverLabel()
    }
    
    func setUpCountLabel() {
        countLabel.text = "The count is: \(self.count)"
        countLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        countLabel.textAlignment = .left
        countLabel.numberOfLines = 1
        countLabel.textColor = .white
        
        
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countLabel.widthAnchor.constraint(equalToConstant: view.bounds.width - 50),
            countLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
        
    }
    
    func setUpObserverLabel() {
        observerLabel.text = "The new count is: \(count)"
        observerLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        observerLabel.textAlignment = .left
        observerLabel.textColor = .white
        observerLabel.numberOfLines = 1
        
        observerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            observerLabel.widthAnchor.constraint(equalToConstant: view.bounds.width - 50),
            observerLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
