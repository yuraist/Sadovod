//
//  AppDelegate.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = MainTabBarVC()
    window?.makeKeyAndVisible()
    
    return true
  }
  
}

