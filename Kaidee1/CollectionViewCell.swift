//
//  ImageCollectionViewCell.swift
//  ZDT_InstaTutorial
//
//  Created by Sztanyi Szabolcs on 22/12/15.
//  Copyright © 2015 Zappdesigntemplates. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var price:UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
        price.text = ""
        imageView.image = nil
    }
    override func awakeFromNib() {
        imageView.contentMode = .scaleAspectFill
        price.textColor = UIColor.kaideeOrange()
    }
    func configureImage(num:Int) {
        let imageName = (num % 2 == 0) ? "image1" : "image2"
         imageView.image = UIImage(named: imageName)
    }
}
