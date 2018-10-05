//
//  TableViewCell.swift
//  cesta
//
//  Created by Ramon Ramos Rosales on 30/09/18.
//  Copyright © 2018 Ramon Ramos Rosales. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // imagen y nombre del tenis
    @IBOutlet weak var ima: UIImageView!
    @IBOutlet weak var labe: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
