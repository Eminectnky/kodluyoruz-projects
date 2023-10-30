//
//  ViewController.swift
//  UITextFieldExample
//
//  Created by Emine CETINKAYA on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapLoginButton(_ sender: UIButton){
        
        print("Username: \(String(describing: usernameTextField.text))")
        print("Password: \(passwordTextField.text ?? "Şİfre Girilmedi")")
    }
}

