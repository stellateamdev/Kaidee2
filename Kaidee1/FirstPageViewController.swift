//
//  FirstPageViewController.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/27/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView:UITableView!
    override func viewWillAppear(_ animated: Bool) {
                self.tabBarController?.tabBar.isHidden = false
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
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return UITableViewAutomaticDimension
        }
        return 292.0
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 292.0
        }
        return 141.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        else {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return UIView()
        }
        else {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
            label.backgroundColor = UIColor.white
            label.text = "Recommend Products"
            label.textAlignment = .center
            label.textColor = UIColor.kaideeBlue()
            label.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
            let view = UIView(frame: CGRect(x: 0, y: label.frame.maxY-1, width: label.frame.width, height: 1))
            view.backgroundColor = UIColor.kaideeBlue()
            label.addSubview(view)
            return label
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else {
            return 10
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "buysell", for: indexPath) as! BuySellTableViewCell
            cell.buyButton.addTarget(self, action: #selector(FirstPageViewController.gotoBuy), for: .touchUpInside)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "recommend", for: indexPath) as! RecommendTableViewCell
            cell.title.text = "yo"
            cell.price.text = "200.-"
            cell.location.text = "บางบอน"
            cell.imageContainer.image = UIImage(named:"image2")
            return cell
        }
    }
    
    
    func gotoSell() {
        
    }
    
    func gotoBuy() {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "category") as! CategoryViewController
        self.navigationController?.pushViewController(view, animated: true)
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
