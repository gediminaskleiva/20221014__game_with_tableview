//
//  contactTableViewCell.swift
//  hw20221014
//
//  Created by GK on 2022-10-14.
//

import UIKit

class contactTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phonelabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func commonInit(_ imageName: String, name: String, phone: String) {
        
     //   logoImage.image = UIImage(named: imageName)
        nameLabel.text = name
        phonelabel.text = phone
        
        
    }
    
    
    
}
