//
//  TableViewCell.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 29/12/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var timein: UILabel!
    @IBOutlet weak var timeout: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        date.layer.masksToBounds = true
        date.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
    
}
