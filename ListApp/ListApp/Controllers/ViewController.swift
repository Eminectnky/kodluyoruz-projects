//
//  ViewController.swift
//  ListApp
//
//  Created by Emine CETINKAYA on 1.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var alertController = UIAlertController()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    
    @IBAction func didAddBarButtonItemTapped(_ sender:
                                             UIBarButtonItem){
        presentAddAlert()
      
    }
      
    func presentAddAlert() {
      
        
        presentAlert(title: "Yeni Eleman Ekle", message: nil,
                     defaultButtonTitle: "Ekle",
                     cancelButtonTitle: "Vazgeç", isTextFieldAvailable: true,
                     defaultButtonHandler: { _ in
            let text = self.alertController.textFields?.first?.text
            if text != "" {
                self.data.append((text)!)
                self.tableView.reloadData()
            }else{
                self.presentWarningAlert()
                
            }
        })
    }
    
    
    func presentWarningAlert() {
        
        presentAlert(title: "Uyarı!", message: "Liste elemanı boş olamaz.", cancelButtonTitle: "Tamam")
        
    }
    
    func presentAlert(title: String?, message: String?, preferredStyle: UIAlertController.Style = .alert,
                      defaultButtonTitle: String? = nil,
                      
                      cancelButtonTitle: String?, isTextFieldAvailable: Bool = false,  defaultButtonHandler: ((UIAlertAction)-> Void)? = nil)
    {
        
        alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        
        if defaultButtonTitle != nil {
            let defaultButton = UIAlertAction(title: defaultButtonTitle, style: .default, handler: defaultButtonHandler)
            
            alertController.addAction(defaultButton)
        }
        
        
        let cancelButton = UIAlertAction(title: cancelButtonTitle, style: .cancel)
        
        if isTextFieldAvailable {
            alertController.addTextField()
        }
        
        alertController.addAction(cancelButton)
        
        present(alertController, animated: true)
        
        
        
        
    }
}
