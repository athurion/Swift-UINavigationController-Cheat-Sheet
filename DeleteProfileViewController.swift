//
//  DeleteProfileViewController.swift
//  Programmatic UINavigationController
//
//  Created by Alvin Sosangyo on 3/23/25.
//

import UIKit

class DeleteProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Delete Profile"
        
        goToProfileButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
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
        let vc = ViewController()
        let profileVC = ProfileViewController()
        
        navigationController?.setViewControllers([vc, profileVC], animated: true)
    }
    
}
