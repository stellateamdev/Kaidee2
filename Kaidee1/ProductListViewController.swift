//
//  ProductListViewController.swift
//  Kaidee1
//
//  Created by Netipol Montong on 4/30/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var country:UIButton!
    @IBOutlet weak var category:UIButton!
    @IBOutlet weak var preciseSearch:UIButton!
    
    
    var categoryName:String!
    
    override func viewWillAppear(_ animated: Bool) {
        prepareViewWillAppear()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func prepareViewWillAppear() {
        let searchBar = UISearchBar()
        searchBar.placeholder = "ค้นหา"
        self.navigationItem.titleView = searchBar
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 49, height: 30))
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.kaideeOrange()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("ขาย", for: .normal)
        
        let navbutton = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = navbutton
        
        country.setTitle("ทุกจังหวัด ▼", for: .normal)
        country.setTitleColor(UIColor.kaideeBlue(), for: .normal)
        
        category.setTitle("\(categoryName!) ▼", for: .normal)
        category.setTitleColor(UIColor.kaideeBlue(), for: .normal)
        
        preciseSearch.setTitle("ค้นละเอียด", for: .normal)
        preciseSearch.setTitleColor(UIColor.kaideeBlue(), for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableViewAutomaticDimension

    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 141.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            return 10
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "productList", for: indexPath) as! ProductListTableViewCell
            cell.title.text = "yo"
            cell.price.text = "200.-"
            cell.location.text = "บางบอน"
            cell.imageContainer.image = UIImage(named:"image2")
            return cell
        
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
