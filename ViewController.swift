//
//  ViewController.swift
//  Programmatic UINavigationController
//
//  Created by Alvin Sosangyo on 3/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Home"
        
        goToProfileButton()
    }
    
    private func goToProfileButton() {
        let button = UIButton(type: .system)
        button.setTitle("Go to Profile", for: .normal)
        button.addTarget(self, action: #selector(navigateToProfile), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func navigateToProfile() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
