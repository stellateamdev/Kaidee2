//
//  SecondChatViewController.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

//Buyer
class SecondChatViewController: UIViewController {
     @IBOutlet weak var imageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.tag = 0
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(FirstChatViewController.click(sender:))))
        imageView.image = UIImage(named:"sellerbutton")
        imageView.contentMode = .scaleAspectFit

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func click(sender:UIGestureRecognizer){
            let view = self.storyboard?.instantiateViewController(withIdentifier: "sellerChat")
            let nav = UINavigationController(rootViewController: self.parent?.parent as! ChatViewController)
            print(nav)
            nav.pushViewController(view!, animated: true)
        
        
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
