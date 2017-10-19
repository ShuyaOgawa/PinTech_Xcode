//
//  AppDelegate.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/09.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit

import FBSDKCoreKit
import FBSDKLoginKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var ViewController: UIViewController?
    var storyboard:UIStoryboard =  UIStoryboard(name: "Main",bundle:nil)
    
    
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        print("ffffffffffffffffffffff")
        var ud = UserDefaults.standard
        var isLogin: Bool? = ud.object(forKey: "isLogin") as? Bool
        if isLogin != nil && isLogin! {
            print("bbbbbbbbbbbbbbbbbbbbbbbb")
            print(isLogin)
            ViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController
           
            // ログイン中の場合
        } else {
            print("ccccccccccccccccccccccccc")
            print(isLogin)
            ViewController = storyboard.instantiateViewController(withIdentifier: "TapBarViewController") as UIViewController
        }
        
        return true
        
//        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    /*
    func application(application: UIApplication,openURL url: NSURL,sourceApplication: String?,annotation: AnyObject?) -> Bool {
        print("eeeeeeeeeeeeeeeeeeeeeeee")
        return FBSDKApplicationDelegate.sharedInstance().application(application, open: url as URL!, sourceApplication: sourceApplication, annotation: annotation)
    }
 */
    
    /*
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("ddddddddddddddddddddddd")
        FBSDKAppEvents.activateApp() //ActiveであることをFacebookに通知
        FBSDKAppEvents.logEvent("launch application") //Facebookに任意のログを送信
    }
 */
    
/*
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        print(1)
        let currentuser:String? = "Username"
        
       
        if (currentuser == nil){
           
            self.window = UIWindow(frame: UIScreen.main.bounds)
           
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
           
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "Login")
           
            self.window?.rootViewController = initialViewController
           
            self.window?.makeKeyAndVisible()
        }else{
           
        }
        
   
        NCMB.setApplicationKey(applicationkey, clientKey: clientkey)
        
        FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        
        return true
    }

    
    func applicationDidBecomeActive(application: UIApplication) {
        print(2)
        FBSDKAppEvents.activateApp()
        
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?,annotation: AnyObject) -> Bool {
        print(3)
        return FBSDKApplicationDelegate.sharedInstance().application(application, open: url as URL!, sourceApplication: sourceApplication, annotation: annotation)
    }

        
    */
    
    
   
}

