//
//  contactListViewController.swift
//  hw20221014
//
//  Created by GK on 2022-10-14.
//

import UIKit

// Pateikiame pradinius duomenis (tr, kreivai, bet mokslams tiks)
var nameData = ["gediminas", "algirdas", "kestutis", "vytautas"]
var phoneData = ["+370 657 55701", "+370 657 55701", "+370 657 55701", "+370 657 55701"]





class contactListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomSignature: UILabel!
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bottomSignature.text = bottomSignatureContent
        
        //self.title = "UITableView"
        tableView.dataSource = self
        tableView.delegate = self
        
        // registruojame cele i table view
        let nibName = UINib(nibName: "contactTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "contactTableViewCell")
                
    }
    
    // eiluciu kiekis
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameData.count
    }
    
    /// main function to fill data to table cell
    /// - Parameters:
    ///   - tableView: <#tableView description#>
    ///   - indexPath: <#indexPath description#>
    /// - Returns: to each cell call common function in  TableViewCell controller
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactTableViewCell", for: indexPath) as! contactTableViewCell
        
        
        cell.commonInit(nameData[indexPath.item], name: nameData[indexPath.item], phone: phoneData[indexPath.item])
        return cell
    }
    
    // just cell height correction
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    
    // refresh data in table view
    @IBAction func reloadDataPressed(_ sender: Any) {
        self.tableView.reloadData()
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
