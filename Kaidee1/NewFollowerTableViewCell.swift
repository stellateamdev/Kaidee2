//
//  NewFollowerTableViewCell.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class NewFollowerTableViewCell: UITableViewCell {
    @IBOutlet weak var userImage:UIImageView!
    @IBOutlet weak var userName:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel!
    @IBOutlet weak var time:UILabel!
    override func awakeFromNib() {
        userImage.contentMode = .scaleAspectFill
        time.textColor = UIColor.darkGray
        userName.textColor = UIColor.black
        userImage.layer.cornerRadius = userImage.layer.frame.size.width/2.0
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
