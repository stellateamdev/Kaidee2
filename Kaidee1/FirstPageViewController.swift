//
//  FirstPageViewController.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/27/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {
    
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var sellButton: UIButton!
    @IBOutlet weak var buyLabel: UILabel!
    @IBOutlet weak var sellLabel: UILabel!
    @IBOutlet weak var buttonLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
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
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = UIColor.kaideeBlue()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewdidLoad()

        // Do any additional setup after loading the view.
    }
    
    func prepareViewdidLoad() {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 49, height: 30))
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.kaideeOrange()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("ขาย", for: .normal)
        
        let navbutton = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = navbutton
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "ค้นหา"
        self.navigationItem.titleView = searchBar
    }
    
    func gotoSell() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
