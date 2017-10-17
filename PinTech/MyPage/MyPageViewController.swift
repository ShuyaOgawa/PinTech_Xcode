
//
//  MyPageViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/10.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    
    @IBOutlet weak var user_image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        user_image1.image = UIImage(named: "21294254_1512791365409047_2922509238137782272_n.jpg")
        user_image1.layer.borderColor = UIColor.white.cgColor
        user_image1.layer.borderWidth = 3
        user_image1.layer.cornerRadius = user_image1.frame.size.width / 2
        user_image1.layer.masksToBounds = true
        

        // Do any additional setup after loading the view.
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
