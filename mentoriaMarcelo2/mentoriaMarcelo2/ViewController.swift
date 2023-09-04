//
//  ViewController.swift
//  mentoriaMarcelo2
//
//  Created by Joao Marcus Dionisio Araujo on 28/08/23.
//

import UIKit

class ViewController: UIViewController {

    lazy var nameTextField: UITextField = {

        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "First Name"
        textField.borderStyle = .line

        return textField
    }()
    
    lazy var lastNameTextField: UITextField = {

        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Last Name"
        textField.borderStyle = .line

        return textField
    }()
    
    lazy var emailTextField: UITextField = {

        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "your@email.com"
        textField.borderStyle = .line

        return textField
    }()

    lazy var button: UIButton = {

        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(printWord), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.=

        view.backgroundColor = .white
        setupHierarchy()
        setupConstraints()
    }

    func setupHierarchy() {

        view.addSubview(nameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(emailTextField)
        view.addSubview(button)
    }

    func setupConstraints() {

        NSLayoutConstraint.activate([

            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            lastNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            button.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

    @objc
    func printWord() {

        guard let word = nameTextField.text else { return }
        print(word)
    }
}
