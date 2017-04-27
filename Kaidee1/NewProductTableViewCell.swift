//
//  NewProductTableViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/27/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class NewProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var subTitleLabel:UILabel!
    @IBOutlet weak var imageContainer:UIImage!
    @IBOutlet weak var price:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
