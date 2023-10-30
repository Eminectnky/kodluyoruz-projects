//
//  ViewController.swift
//  UILabel
//
//  Created by Emine CETINKAYA on 27.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Merhaba iOS"
        label.font = UIFont.systemFont(ofSize: 17.0)
        label.textColor = UIColor.red
    }


}

