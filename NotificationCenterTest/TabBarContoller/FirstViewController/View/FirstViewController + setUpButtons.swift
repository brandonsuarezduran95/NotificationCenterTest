//
//  FirstViewController + setUpButtons.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension FirstViewController {
    func setUpButtons() {
        setUpAddButton()
        setUpResetButton()
    }
    
    func setUpAddButton() {
        addButton.setTitle("+", for: .normal)
        addButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        addButton.setTitleColor(.white, for: .normal)
        addButton.layer.borderWidth = 2
        addButton.layer.borderColor = UIColor.white.cgColor
        addButton.layer.cornerRadius = 15
        addButton.backgroundColor = .systemYellow
        addButton.addTarget(self, action: #selector(incrementCount(_ :)), for: .touchUpInside)

    }
    
    @objc func incrementCount(_ sender: UIButton) {
        count += 1
        countLabel.text = "The count is: \(count)"
        // you can pass object through the post, as long as you type cast the object after you receive it 
        notificationCenter.post(name: .countDidChange, object: count)
    }
    
    func setUpResetButton() {
        resetButton.setTitle("Reset", for: .normal)
        resetButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.layer.borderWidth = 2
        resetButton.layer.borderColor = UIColor.white.cgColor
        resetButton.layer.cornerRadius = 15
        resetButton.backgroundColor = .systemYellow
        resetButton.addTarget(self, action: #selector(resetCount(_ :)), for: .touchUpInside)

    }
    
    @objc func resetCount(_ sender: UIButton) {
        count = 0
        countLabel.text = "The count is: \(count)"
        observerLabel.text = "The new count is: \(count)"
        notificationCenter.post(name: .countDidReset, object: nil)
    }
}

