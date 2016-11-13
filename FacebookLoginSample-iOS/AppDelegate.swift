//
//  AppDelegate.swift
//  FacebookLoginSample-iOS
//
//  Created by Alex Pogue on 11/13/16.
//  Copyright © 2016 Alex Pogue. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FacebookCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool
    {
        return SDKApplicationDelegate.shared.application(app, open: url, options: options)
    }
}
