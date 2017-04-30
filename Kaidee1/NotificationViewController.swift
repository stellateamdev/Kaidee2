//
//  NotificationViewController.swift
//  Kaidee1
//
//  Created by marky RE on 4/29/2560 BE.
//  Copyright © 2560 Netipol Montong. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView:UITableView!
    var newsArray:[[String:String]] = []
    var imgArray:[UIImage] = []
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "แจ้งเตือน"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = UIColor.kaideeBlue()
        self.tableView.separatorColor = UIColor.clear
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        newsArray.append(["title":"ใช้ แอปฯ Kaidee ดีกว่า","description":"Kaidee พัฒนาแอปฯ ปรับโฉมใหม่ทันสมัย ใช้ง่ายกว่าเดิม ลองเลย","time":"26/04/2017"])
        imgArray.append(UIImage(named: "n1")!)
            newsArray.append(["title":"Kaidee สวรรค์ของคนชอบน้ำพริก","description":"ใครจะรู้ว่า Kaidee เป็นแหล่งรวมน้ำพริกรสเด็ดที่ทั้งอร่อยทั้งแปลก เผลอๆ คุณอาจไม่เคยเห็นที่ไหนมาก่อน วันนี้เรามีมาให้  10 อย่าง ลองดูเลย" ,"time":"25/04/2017"])
        imgArray.append(UIImage(named: "n2")!)
        newsArray.append(["time":"20/04/2017" ,"description":"10 ของเด็ดแห่งความทรงจำยุค 90’s ที่คุณคิดถึง มารวมอยู่แล้วที่นี่ ดูเล้ย","title":"ชิ้นไหนที่เคยผ่านมือคุณบ้าง?" ])
        imgArray.append(UIImage(named: "n3")!)
        newsArray.append(["time":"07/04/2017","description":"หนุ่มๆที่กำลังมองหาเทรนในช่วงซัมเมอร์ต้องดูนี่เลย. สินค้าแฟชั่นอะไรที่กำลังฮิตติดลิมบนในตอนนี้","title":"เทรนสำหรับหนุ่มๆ ในหน้าร้อน"])
        imgArray.append(UIImage(named: "n4")!)
        newsArray.append(["time":"07/04/2017","description":"เมษาแบบนี้ ถึงเวลาเพิ่มชุดใหม่เอามาสู้แดดแรงๆ ในแฟชั่นสไตลล์รับลมร้อน เทรนด์อะไรกำลังมา ดูเลย","title":"ถึงเวลาเปลี่ยนเทรนด์แล้วแหละสาวๆ"])
        imgArray.append(UIImage(named: "n5")!)
        newsArray.append(["time":"29/03/2017","description":"สินค้าแฟชั่น จัดสรรมาให้เป๊ะสำหรับสาวๆ เสื้อผ้า กระเป๋า รองเท้า เลือกเลย ซัมเมอร์นี้รับรองเกิด","title":"แต่งตัวดี มีชัยไปกว่าครึ่ง"])
        imgArray.append(UIImage(named: "n6")!)
        self.tableView.reloadData()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 380.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        cell.time.text = newsArray[indexPath.row]["time"]
        cell.titleLabel.text = newsArray[indexPath.row]["title"]
        cell.descriptionLabel.text = newsArray[indexPath.row]["description"]
        cell.imageContainer.image = imgArray[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
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
