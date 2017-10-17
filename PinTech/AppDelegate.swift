//
//  AppDelegate.swift
//  PinTech
//
//  Created by 小川秀哉 on 2017/10/09.
//  Copyright © 2017年 Digital Circus Inc. All rights reserved.
//

import UIKit
import NCMB
import FBSDKCoreKit
import FBSDKLoginKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    
    let applicationkey = "49059639ab64aeeb75e4119a17b348109869f910815a383979b6265507ba0d2d"
    let clientkey      = "487a8bdae7c242af3bc1793a6c3fb68df9b5a52ded91a1cae1296f09966d1858"
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //********** SDKの初期化 **********
        NCMB.setApplicationKey(applicationkey, clientKey: clientkey)
        
        /** 追加② **/
        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        /** 追加① **/
        FBSDKAppEvents.activateApp()
    }
    
    /** 追加③ **/
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?,annotation: AnyObject) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, open: url as URL!, sourceApplication: sourceApplication, annotation: annotation)
    }
    
    
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

