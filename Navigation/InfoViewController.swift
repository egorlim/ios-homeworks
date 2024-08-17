import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Info"

    
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(closeTapped))

        let showAlertButton = UIButton(type: .system)
        showAlertButton.setTitle("Show Alert", for: .normal)
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)

        showAlertButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(showAlertButton)

        NSLayoutConstraint.activate([
            showAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showAlertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func closeTapped() {
        // Закрытие модального представления
        dismiss(animated: true, completion: nil)
    }

    @objc func showAlert() {
        let alert = UIAlertController(title: "Alert", message: "This is an alert message.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("OK Pressed")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel Pressed")
        }))
        present(alert, animated: true, completion: nil)
    }
}
