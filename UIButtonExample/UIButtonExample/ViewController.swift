//
//  ViewController.swift
//  UIButtonExample
//
//  Created by Emine CETINKAYA on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapButton(_ sender: UIButton) {
        label.text = "Hoş geldin!"
    }
}

