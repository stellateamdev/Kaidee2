//
//  BuySellTableViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/30/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class BuySellTableViewCell: UITableViewCell {
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var sellButton: UIButton!
    @IBOutlet weak var buyLabel: UILabel!
    @IBOutlet weak var sellLabel: UILabel!
    @IBOutlet weak var buttonLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        buyButton.layer.cornerRadius = buyButton.layer.frame.size.width/2.0
        buyButton.setTitleColor(UIColor.white, for: .normal)
        buyButton.backgroundColor = UIColor.kaideeOrange()
        
        sellButton.layer.cornerRadius = sellButton.layer.frame.size.width/2.0
        sellButton.setTitleColor(UIColor.white, for: .normal)
        sellButton.backgroundColor = UIColor.kaideeGreen()
        
        buttonLabel.numberOfLines = 0
        buttonLabel.lineBreakMode = .byWordWrapping
        buttonLabel.textColor = UIColor.lightGray
        buttonLabel.text = "ข้าวของที่บ้านเก่าไม่ได้ใช้\n เอาออกมาขายที่ Kaidee"
        
        buyLabel.textColor = UIColor.lightGray
        
        sellLabel.textColor = UIColor.lightGray

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
