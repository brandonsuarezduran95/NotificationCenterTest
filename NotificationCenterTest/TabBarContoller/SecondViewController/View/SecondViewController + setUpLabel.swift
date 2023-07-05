//
//  SecondViewController + setUpLabel.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension SecondViewController {
    func setUpLabel() {
        view.addSubview(observerLabel)
        
        observerLabel.text = "The count is: \(count)"
        observerLabel.textAlignment = .center
        observerLabel.textColor = .white
        observerLabel.font = .systemFont(ofSize: 16, weight: .bold)
        
        observerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            observerLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            observerLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            observerLabel.rightAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.rightAnchor),
            observerLabel.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor)
        ])
    }
}
