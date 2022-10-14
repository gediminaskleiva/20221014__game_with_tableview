//
//  ViewController.swift
//  hw20221014
//
//  Created by GK on 2022-10-14.
//

import UIKit

var loggedUserName: String = ""
let bottomSignatureContent: String = "2022.10.14 @gk"


class ViewController: UIViewController {

    

    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var bottomSignature: UILabel!
    
    // pradiniai parametrai
    //var possibleToLogin: String = "gediminas"
    var possibleToLogin = ["gediminas", "vytautas"]
    var loginSuccess: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        errorMessage.textColor = .systemBackground
        errorMessage.text = "Something is wrong. Please try again or contact with administrator."
        bottomSignature.text = bottomSignatureContent
    }

    // skirta pagauti ir mygtukui savarankiskai neleisti atidaryti sekancios formos
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
    if let ident = identifier {
        if ident == "goToSystem" {
            if loginSuccess != true {
                return false
            }
        }
    }
    
    // ir iskart atstatome pradine login busena
    loginSuccess = false
    return true
}

    // Patikrinti ar galima login daryti
    @IBAction func loginButtonPressed(_ sender: Any) {
        if let login = loginField.text
         , let password = passwordField.text {
            checkValidation(login, password)
        } else {
            errorMessage.textColor = .red
        }

    }
    
    // tikrina ar gali prisijungti
    // Galima tik Gediminui ir su slaptazodziu ilgesniu nei trys simboliai
    func checkValidation(_ login: String, _ password : String ) {
        
        print("login: \(login.count), pass: \(password.count)")
        
        if possibleToLogin.contains(login)
            //login in  possibleToLogin[]
            && password.count > 3 {
            loginSuccess = true
            loggedUserName = login
            errorMessage.textColor = .systemBackground
        }  else {
            errorMessage.textColor = .red
            
        }
        
    }
    
    
    
    
}

