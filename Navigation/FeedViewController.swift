//
//  FeedViewController.swift
//  Navigation
//
//  Created by Лимарев Егор on 17.08.2024.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"

        let postButton = UIButton(type: .system)
        postButton.setTitle("Open Post", for: .normal)
        postButton.addTarget(self, action: #selector(openPost), for: .touchUpInside)

        postButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(postButton)

        NSLayoutConstraint.activate([
            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func openPost() {
        let post = Post(title: "Sample Post")
        let postViewController = PostViewController()
        postViewController.post = post
        navigationController?.pushViewController(postViewController, animated: true)
    }
}

