//
//  CategoryCollectionViewCell.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/30/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    override func awakeFromNib() {
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
    }
    func configureImage(num:Int) {
        let imageName = "category\(num)"
        imageView.image = UIImage(named: imageName)
    }

}
