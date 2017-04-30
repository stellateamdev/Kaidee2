//
//  FirstChatViewController.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit


class FirstChatViewController: UIViewController {
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var imageView2:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.tag = 0
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(FirstChatViewController.click(sender:))))
        imageView.image = UIImage(named:"sellerbutton")
        imageView.contentMode = .scaleAspectFit
        
        imageView2.tag = 1
        imageView2.isUserInteractionEnabled = true
        imageView2.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(FirstChatViewController.click(sender:))))
        imageView2.image = UIImage(named:"buyerbutton")
        imageView2.contentMode = .scaleAspectFit
        
       
        // Do any additional setup after loading the view.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func click(sender:UIGestureRecognizer){
        print("enter click")
        let img = sender.view as! UIImageView
        if img.tag == 0 {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "sellerChat")
        let nav = UINavigationController(rootViewController: self.parent?.parent as! ChatViewController)
        print(nav)
        nav.pushViewController(view!, animated: true)
        }
        else {
            let view = self.storyboard?.instantiateViewController(withIdentifier: "buyerChat")
            let nav = UINavigationController(rootViewController: self.parent?.parent as! ChatViewController)
            print(nav)
            nav.pushViewController(view!, animated: true)
        }
        
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
