//
//  MyTableViewCell.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 28/12/2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    

    @IBOutlet weak var TimeIn: UILabel!
    @IBOutlet weak var TimeOut: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
