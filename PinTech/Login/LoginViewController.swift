//
//  LoginViewController.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/15.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//, FBSDKLoginButtonDelegate

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit



class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.ViewController = self
    }
    
    /*
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User Logged In")
        if ((error) != nil)
        {
            //エラー処理
        } else if result.isCancelled {
            //キャンセルされた時
        } else {
            //必要な情報が取れていることを確認(今回はemail必須)
            if result.grantedPermissions.contains("email")
            {
                // 次の画面に遷移
                self.performSegue(withIdentifier: "showMain", sender: self)
            }
        }
    }
 */
    
   
    override func viewDidAppear(_ animated: Bool) {
       
        if (FBSDKAccessToken.current() != nil) {
            print("User Already Logged In")
            //メイン画面へ遷移
            self.performSegue(withIdentifier: "showMain", sender: self)
            // ログイン処理
            var ud = UserDefaults.standard
            ud.set(true, forKey: "isLogin")
        } else {
            print("User not Logged In")
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
//            loginView.delegate = self as! FBSDKLoginButtonDelegate
            // ログイン処理
            var ud = UserDefaults.standard
            print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            print(ud)
            ud.set(true, forKey: "isLogin")
            print(ud)
        }
    }
    
  
    
    /*
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
 */

}
