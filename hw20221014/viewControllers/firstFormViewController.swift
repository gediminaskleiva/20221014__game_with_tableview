//
//  firstFormViewController.swift
//  hw20221014
//
//  Created by GK on 2022-10-14.
//

import UIKit

class firstFormViewController: UIViewController {

    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameImage: UIImageView!
    @IBOutlet weak var bottomSignature: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        usernameLabel.text = loggedUserName
        usernameImage.image = UIImage(named: loggedUserName)
        bottomSignature.text = bottomSignatureContent
        
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
