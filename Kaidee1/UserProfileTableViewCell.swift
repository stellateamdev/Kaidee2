//
//  UserProfileTableViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class UserProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileDescription:UILabel!
    @IBOutlet weak var profileButton:UIButton!
    @IBOutlet weak var profileImage:UIImageView!
    @IBOutlet weak var userName:UILabel!
    @IBOutlet weak var products:UILabel!
    @IBOutlet weak var favourite:UILabel!
    @IBOutlet weak var productsNum:UILabel!
    @IBOutlet weak var favouriteNum:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
