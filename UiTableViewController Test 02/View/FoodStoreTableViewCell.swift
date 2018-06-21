//
//  FoodStoreTableViewCell.swift
//  UiTableViewController Test 02
//
//  Created by D7703_04 on 2018. 5. 21..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class FoodStoreTableViewCell: UITableViewCell {

    @IBOutlet weak var foodStoreCellImage: UIImageView! {

        didSet {
                foodStoreCellImage.layer.cornerRadius = 15.0
                foodStoreCellImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var foodStoreCellName: UILabel!
    @IBOutlet weak var foodStoreCellAddress: UILabel!
    @IBOutlet weak var foodStoreCellTel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
