//
//  FoodTableViewCell.swift
//  text2
//
//  Created by nttr on 2017/07/19.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet var foodImageView: UIImageView!
    @IBOutlet var foodLabel:    UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
