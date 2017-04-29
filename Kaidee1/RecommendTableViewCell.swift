//
//  RecommendTableViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/30/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class RecommendTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var imageContainer:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        price.textColor = UIColor.kaideeOrange()
        imageContainer.contentMode = .scaleAspectFill
        imageContainer.layer.cornerRadius = 5
        imageContainer.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
