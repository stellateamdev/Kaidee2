//
//  CategoryViewController.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/30/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var categoryArray:[String] = ["รถมือสอง","อสังหาริมทรัพย์","มอเตอร์ไซค์","มือถือ แท็บเล็ต","อะไหล่รถ","พระเครื่อง","คอมพิวเตอร์","บ้านและสวน","กล้อง","เครื่องใช้ไฟฟ้า","เครื่องดนตรี","แม่และเด็ก","นาฬิกา","กระเป๋า","รองเท้า","เสื้อผ้า","สุขภาพและความงาม","งานอดิเรก","จักยาน","กีฬา","เกมส์","ของสะสม","สัตว์เลี้ยง","ธุรกิจ","ท่องเที่ยว","บริการ","การศึกษา","แบ่งปัน"]
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = UIColor.kaideeBlue()
        self.navigationItem.title = "เลือกหมวดหมู่"
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      prepareViewDidLoad()
        
        
        
    }
    func prepareViewDidLoad() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: 110, height: 110)
        
        collectionView.collectionViewLayout = layout
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCollectionCell", for: indexPath) as!
        CategoryCollectionViewCell
        
        cell.configureImage(num: indexPath.row)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let view = self.storyboard?.instantiateViewController(withIdentifier: "queryCategoryProduct") as! ProductListViewController
        view.categoryName = categoryArray[indexPath.row]
        
        self.navigationController?.pushViewController(view, animated: true)
    }
   
   
    
   }
