//
//  ProfileViewController.swift
//  Programmatic UINavigationController
//
//  Created by Alvin Sosangyo on 3/23/25.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Profile"
        
        navigationItem()
        goBackButton()
    }
    
    private func navigationItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Edit",
            style: .plain,
            target: self,
            action: #selector(navigateToEditProfile)
        )
    }
    
    private func goBackButton() {
        let button = UIButton(type: .system)
        button.setTitle("Go Back", for: .normal)
        button.addTarget(self, action: #selector(navigateBack), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func navigateBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func navigateToEditProfile() {
        let editProfileVC = EditProfileViewController()
        navigationController?.pushViewController(editProfileVC, animated: true)
    }
    
}
