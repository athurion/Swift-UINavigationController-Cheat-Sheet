//
//  EditProfileViewController.swift
//  Programmatic UINavigationController
//
//  Created by Alvin Sosangyo on 3/23/25.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Edit Profile"
        
        navigationItem()
        goHomeButton()
    }
    
    private func navigationItem() {
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Edit",
            style: .plain,
            target: self,
            action: #selector(navigateToEditProfile)
        )
    }
    
    private func goHomeButton() {
        let button = UIButton(type: .system)
        button.setTitle("Go Home", for: .normal)
        button.addTarget(self, action: #selector(navigateHome), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func navigateHome() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func navigateToEditProfile() {
        let deleteProfileVC = DeleteProfileViewController()
        navigationController?.pushViewController(deleteProfileVC, animated: true)
    }
    
}
