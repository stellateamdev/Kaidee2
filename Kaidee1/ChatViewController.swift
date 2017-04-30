//
//  ChatTableViewController.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit



class ChatViewController: UIViewController,CAPSPageMenuDelegate{
    
    
    var pageMenu : CAPSPageMenu?
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = "พูดคุย"
        
         self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor.kaideeBlue()
        let button = UIBarButtonItem(image: UIImage(named:"Trash"), style: .done, target: self, action: #selector(ChatViewController.alert))
        self.navigationItem.rightBarButtonItem = button
        
    }
    override func viewDidLoad() {
       self.addPage()
        
    }
    
    func alert() {
        let alert = UIAlertController(title: "Notice!", message: "chat function is not included in our proposal", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK, Got it", style: .default, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    func addPage() {
        pageMenu?.delegate = self
        var controllerArray : [UIViewController] = []
        
        let controller : UIViewController = self.storyboard?.instantiateViewController(withIdentifier: "firstChat") as! FirstChatViewController
        let controller2 : UIViewController = self.storyboard?.instantiateViewController(withIdentifier:"secondChat") as! SecondChatViewController
          let controller3 : UIViewController = self.storyboard?.instantiateViewController(withIdentifier:"thirdChat") as! ThirdChatViewController
        controller.title = "ทั้งหมด"
        controller2.title = "คุยกับผู้ซื้อ"
        controller3.title = "คุยกับผู้ขาย"
        controllerArray.append(controller)
        controllerArray.append(controller2)
        controllerArray.append(controller3)
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame:CGRect(x: 0.0, y: 69.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view) 
    }
    
    func willMoveToPage(_ controller: UIViewController, index: Int){
    
    }
    
    func didMoveToPage(_ controller: UIViewController, index: Int){
    
    }
    
}
