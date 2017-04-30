//
//  ThirdViewController.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

//Seller
class ThirdChatViewController: UIViewController {

    @IBOutlet weak var imageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.tag = 0
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(FirstChatViewController.click(sender:))))
        imageView.image = UIImage(named:"buyerbutton")
        imageView.contentMode = .scaleAspectFit
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func click(sender:UIGestureRecognizer){
        let view = self.storyboard?.instantiateViewController(withIdentifier: "buyerChat")
        let nav = UINavigationController(rootViewController: self.parent?.parent as! ChatViewController)
        print(nav)
        nav.pushViewController(view!, animated: true)
        
        
    }
}
