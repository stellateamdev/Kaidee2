//
//  UserProfileViewController.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scrollView:UIScrollView!
    @IBOutlet weak var profileView:ProfileViewCell!
    var collectionViewLayout: CustomImageFlowLayout!
    
    @IBOutlet weak var buttomConstrain: NSLayoutConstraint!
    @IBOutlet weak var CollectionViewHeight: NSLayoutConstraint!
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
       setScrollView()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = UIColor.kaideeBlue()
        self.navigationItem.title = "ฉัน"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let collectionViewLayout = CustomImageFlowLayout()
        collectionView.collectionViewLayout = collectionViewLayout
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        setCurrentUserProfile()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        
        let title = (indexPath.row % 2 == 0) ? "Human" : "Car"
        let price = (indexPath.row % 2 == 0) ? "1000.-" : "2000.-"
       
        cell.titleLabel.text = title
        cell.price.text = price
        cell.configureImage(num: indexPath.row)
        
        return cell
    }
    

    func setScrollView() {
        
        scrollView.contentSize = CGSize(width: self.collectionView.frame.size.width, height: self.collectionView.contentSize.height+self.profileView.frame.size.height)
        CollectionViewHeight.constant = collectionView.contentSize.height
        buttomConstrain.constant = -(collectionView.contentSize.height)
        self.view.setNeedsLayout()
    }
    
    func setCurrentUserProfile() {
        profileView.favourite.text = "ผู้ขายโปรด"
        profileView.favouriteNum.text = "100"
        profileView.products.text = "สินค้า"
        profileView.productsNum.text = "40"
        profileView.profileButton.setTitle("แก้ไขข้อมูลส่วนตัว", for: .normal)
        profileView.profileDescription.text = "Your wish is my command"
        profileView.userName.text = "Commander"
        profileView.profileImage.image = UIImage(named: "trump")
        profileView.coverPhotoImage.image = UIImage(named: "coverPhoto")
    }

}
