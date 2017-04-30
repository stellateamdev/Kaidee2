//
//  NewsTableViewCell.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var imageContainer:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel!
    @IBOutlet weak var time:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageContainer.contentMode = .scaleAspectFit
        imageContainer.layer.cornerRadius = 5
        imageContainer.layer.masksToBounds = true
        
        titleLabel.textColor = UIColor.black
        
  
        time.textColor = UIColor.darkGray
        
        descriptionLabel.textColor = UIColor.black
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
