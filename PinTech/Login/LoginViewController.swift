//
//  LoginViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/15.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit
import NCMB
import FBSDKCoreKit
import FBSDKLoginKit





class LoginViewController: UIViewController {
    
    let facebookLogin =  FBSDKLoginManager()
    
    @IBAction func FacebookLoginBtn(_ sender: Any) {
        print(111111)
        facebookLogin.logIn(withReadPermissions: ["email"]) {(user, error) -> Void in
            print(222222222)
            if ((error) != nil)
            {
                //エラー処理
            } else if result.isCancelled {
                //キャンセルされた時
            } else {
                //必要な情報が取れていることを確認(今回はemail必須)
                if result.grantedPermissions.contains("email")
                {
                    // 次の画面に遷移（後で）
                }
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (FBSDKAccessToken.current() != nil) {
            print("User Already Logged In")
            //後で既にログインしていた場合の処理（メイン画面へ遷移）を書く
        } else {
            print("User not Logged In")
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
            loginView.delegate = self as! FBSDKLoginButtonDelegate
        }
    }
    
        
    /*
   
        print(1)
       var fb: FBSDKLoginManager = FBSDKLoginManager()
        print(2)
        fb.logIn(withReadPermissions: ["email"], handler: {(result: FBSDKLoginManagerLoginResult!, error: NSError!) -> Void in
            if ((error) != nil) {
                print(4)
                // エラー
            } else if result.isCancelled {
                print(5)
                // キャンセル
            } else {
                var token = FBSDKAccessToken.current()
                
                if token != nil {
                    // ユーザーIDが取得できる
                    // token.userID

                    var graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
                    graphRequest.start(completionHandler: { (connection, result, error) -> Void in
                        if ((error) == nil) {
                            // Emailが取得できる
                            // result.valueForKey("email") as! NSString
                        }
                    })
                }
            }
            } as! FBSDKLoginManagerRequestTokenHandler)
    }
 */
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
