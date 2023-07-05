//
//  FirstViewController + setUpContainerStackView.swift
//  NotificationCenterTest
//
//  Created by Brandon Suarez on 7/3/23.
//

import UIKit

extension FirstViewController {
    func setUpContainerStackView() {
        view.addSubview(containerStackView)
        
        containerStackView.axis = .vertical
        containerStackView.distribution = .fillProportionally
        containerStackView.alignment = .center
        containerStackView.spacing = 50
        
        containerStackView.addArrangedSubview(observerLabel)
        containerStackView.addArrangedSubview(countLabel)
        containerStackView.addArrangedSubview(buttonsStackView)
        
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            containerStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200),
            containerStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
        ])
    }
}
