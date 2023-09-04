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
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(printWord), for: .touchUpInside)
        
        return button
    }()
    
    lazy var subscribers: UILabel = {
        
        let subscribers = UILabel()
        subscribers.translatesAutoresizingMaskIntoConstraints = false
        subscribers.text = "Example"
        subscribers.textColor = UIColor.green
        subscribers.textAlignment = .center
        
        return subscribers
    }()
    
//    lazy var personImage: UIImage = {
//
//        let personImage: UIImage()
//        personImage.
//
//
//    }()
    
    
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
        view.addSubview(subscribers)
    }

    func setupConstraints() {

        NSLayoutConstraint.activate([

            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            lastNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            button.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 200),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            button.heightAnchor.constraint(equalToConstant: 70),
            
            subscribers.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140),
            subscribers.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }

    @objc
    func printWord() {

        guard let word = nameTextField.text else { return }
        print(word)
    }
}

