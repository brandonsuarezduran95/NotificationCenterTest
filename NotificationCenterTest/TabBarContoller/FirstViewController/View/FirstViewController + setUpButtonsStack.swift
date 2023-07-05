//
//  FirstViewController + setUpButtonsStack.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension FirstViewController {
    func setUpButtonsStack() {
        
        buttonsStackView.axis = .horizontal
        buttonsStackView.distribution = .fillProportionally
        buttonsStackView.alignment = .center
        buttonsStackView.spacing = 5
        
        buttonsStackView.addArrangedSubview(addButton)
        buttonsStackView.addArrangedSubview(resetButton)
        
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonsStackView.widthAnchor.constraint(equalToConstant: view.bounds.width - 50),
        ])
    }
}
