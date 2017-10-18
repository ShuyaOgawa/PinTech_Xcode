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
    
    
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func application(application: UIApplication,openURL url: NSURL,sourceApplication: String?,annotation: AnyObject?) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, open: url as URL!, sourceApplication: sourceApplication, annotation: annotation)
    }
    
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        FBSDKAppEvents.activateApp() //ActiveであることをFacebookに通知
        FBSDKAppEvents.logEvent("launch application") //Facebookに任意のログを送信
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

