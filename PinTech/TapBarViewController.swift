//
//  TapBarViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/19.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit

class TapBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.ViewController = self
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
