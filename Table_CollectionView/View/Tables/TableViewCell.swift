//
//  TableViewCell.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 29/12/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    //Outlet of button on table
    @IBOutlet weak var date: UILabel!
    
    //Outlet of labels on table view cell
    @IBOutlet weak var timein: UILabel!
    @IBOutlet weak var timeout: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //Giving corners to table view button
        date.layer.masksToBounds = true
        date.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
    
}
