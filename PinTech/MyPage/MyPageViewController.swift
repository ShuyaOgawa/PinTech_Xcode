
//
//  MyPageViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/10.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class MyPageViewController: UIViewController {
    
    @IBOutlet weak var user_image1: UIImageView!
    
    var userProfile : NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnUserData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func returnUserData()
    {
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me",
                                                                 parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"])
        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
            if ((error) != nil)
            {
                // エラー処理
                print("Error: \(error)")
            }
            else
            {
                // プロフィール情報をディクショナリに入れる
                self.userProfile = result as! NSDictionary
                print(self.userProfile)
                print(self.userProfile["picture"])
                
                if let url = self.userProfile["picture"] as? [String: AnyObject] {
                    print(url["data"]!["url"])
                    if let user_image1_url: String = url["data"]!["url"] as! String {
                        print(1111111111111)
                        print(user_image1_url)
                        let imgUrl: NSURL = NSURL(string: user_image1_url)!
                        let file: Data = try! Data(contentsOf: imgUrl as URL)
                        let img = UIImage(data: file as Data)
                        self.user_image1.image = img
                        self.user_image1.clipsToBounds = true
                        self.user_image1.layer.cornerRadius = 60
                        self.user_image1.layer.borderColor = UIColor.white.cgColor
                        self.user_image1.layer.borderWidth = 3
                        self.user_image1.layer.cornerRadius = self.user_image1.frame.size.width / 2
                        self.user_image1.layer.masksToBounds = true
                    }
                    
                }
            
                
            }
        })
        
    }

    
    
    

   

}
