//
//  SecondViewController + setUpButton.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension SecondViewController {
    func setUpButton() {
        view.addSubview(incrementButton)
        
        incrementButton.setTitle("+", for: .normal)
        incrementButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        incrementButton.layer.borderWidth = 2
        incrementButton.layer.borderColor = UIColor.white.cgColor
        incrementButton.backgroundColor = .systemBlue
        incrementButton.layer.cornerRadius = 15
        incrementButton.addTarget(self, action: #selector(incrementCount), for: .touchUpInside)
        
        incrementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            incrementButton.centerXAnchor.constraint(equalTo: observerLabel.centerXAnchor),
            incrementButton.topAnchor.constraint(equalTo: observerLabel.bottomAnchor, constant: 20),
            incrementButton.widthAnchor.constraint(equalToConstant: view.bounds.width - 100),
            incrementButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    @objc func incrementCount(_ sender: UIButton) {
        count += 1
        observerLabel.text = "The count is: \(count)"
        // you can pass user info data, as long as it keeps the data type from the parameter
        notificationCenter.post(name: .countDidUpdate, object: nil, userInfo: ["userInfo": ["userID": 6, "userName": "John"]])
    }
}
