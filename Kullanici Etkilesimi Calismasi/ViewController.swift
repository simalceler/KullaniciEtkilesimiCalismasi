//
//  ViewController.swift
//  Kullanici Etkilesimi Calismasi
//
//  Created by Şimal Çeler on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basitAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            
            print("İptal tıklandı")
        }
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            
            print("Tamam tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func ozelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
            
        }
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true
            
        }
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.labelSonuc.text = "Email : \(alinanEmail) - Şifre : \(alinanSifre)"
        }
        alertController.addAction(kaydetAction)
        
        self.present(alertController, animated: true)
        
    }
    @IBAction func actionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            
            print("Action Sheet : İptal tıklandı")
        }
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            
            print("Action Sheet : Tamam tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
        
        
    }
}

