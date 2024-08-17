//
//  PostViewController.swift
//  Navigation
//
//  Created by Лимарев Егор on 17.08.2024.
//

import UIKit

class PostViewController: UIViewController {

    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal

        if let post = post {
            title = post.title
        }

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(openInfo))
    }

    @objc func openInfo() {
        let infoViewController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoViewController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
    }
}

