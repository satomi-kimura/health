//
//  TableViewCell.swift
//  zukan
//
//  Created by nttr on 2017/07/19.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var pict: UIImageView!
    @IBOutlet var name: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
