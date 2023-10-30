//
//  ViewController.swift
//  ActivityIndicatorExample
//
//  Created by Emine CETINKAYA on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var alertLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertLabel.isHidden = true
    }
    
    
    @IBAction func didLoginButtonTapped(_ sender: UIButton){
        if usernameTextField.text == "Emine", passwordTextField.isHidden{
            passwordTextField.isHidden = false
        }else{
            if usernameTextField.text != "Emine"{
                alertLabel.text = "Hata: Kullanıcı adı yanlış!"
                alertLabel.isHidden = false
                alertLabel.isHidden = true
                
            }else if  !(passwordTextField.isHidden), passwordTextField.text == "123456" {
                activityIndicatorView.startAnimating()
                
                alertLabel.isHidden = true
                
                
            }else{
                alertLabel.text = "Hata: Şifreniz yanlış lütfen tekrar deneyin."
                alertLabel.isHidden = false
            }
        }
        
    }
    
    
    
}





