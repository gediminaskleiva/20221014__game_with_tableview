//
//  newContactViewController.swift
//  hw20221014
//
//  Created by GK on 2022-10-14.
//

import UIKit

class newContactViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var bottomSignature: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        errorMessage.text = "Please check the data validity"
        errorMessage.textColor = .systemBackground
        bottomSignature.text = bottomSignatureContent
        
    }
    
    /// Mygtuko nuspausdimas
    /// tuo paciu patikrina ir ar uzpildyti duomenys
    @IBAction func saveNewContactPressed(_ sender: Any) {
        
        // Patikrinti ar galima login daryti
        if let name = nameField.text
            , let phone = phoneField.text {
            addNewContact(name, phone)
            
            
            
            
            
        } else {
            errorMessage.textColor = .red
        }
        
    }
    
    // main saugojimo funkcija
    func addNewContact(_ name: String, _ phone: String) {
        
        nameData.append(name)
        phoneData.append(phone)
        
        errorMessage.text = "New contact added to list"
        errorMessage.textColor = .tintColor
        
        nameField.text = ""
        phoneField.text = ""
        
      // bandymas atnaujinti duomenis
      //  let sendValue = contactListViewController();
      //  sendValue.reloadData();
        
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
