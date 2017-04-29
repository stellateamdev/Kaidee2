//
//  ProfileCollectionViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class ProfileViewCell: UIView {
    @IBOutlet weak var profileDescription:UILabel!
    @IBOutlet weak var profileButton:UIButton!
    @IBOutlet weak var profileImage:UIImageView!
    @IBOutlet weak var userName:UILabel!
    @IBOutlet weak var products:UILabel!
    @IBOutlet weak var favourite:UILabel!
    @IBOutlet weak var productsNum:UILabel!
    @IBOutlet weak var favouriteNum:UILabel!
    @IBOutlet weak var coverPhotoImage:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImage.layer.cornerRadius = profileImage.layer.frame.size.width/2.0
        profileImage.layer.masksToBounds = true
        profileImage.contentMode = .scaleAspectFill
        profileImage.backgroundColor = UIColor.kaideeBlue()
        profileImage.layer.borderColor = UIColor.white.cgColor
        profileImage.layer.borderWidth = 3
        
        profileButton.layer.cornerRadius = profileButton.layer.frame.size.height/2.0
        profileButton.backgroundColor = UIColor.kaideeBlue()
        profileButton.setTitleColor(UIColor.white, for: .normal)
        
        profileDescription.numberOfLines = 0
        profileDescription.lineBreakMode = .byWordWrapping
        
        coverPhotoImage.contentMode = .scaleAspectFill
        
        
        // Initialization code
    }

}
