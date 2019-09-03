//
//  Extensions+UIViewController.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

extension UIViewController {
  
  static func createNavigationController(withTitle title: String, imageName: String, tag: Int) -> UINavigationController {
    let viewController = self.init()
    let tabBarImage = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
    let tabBarItem = UITabBarItem(title: title, image: tabBarImage, tag: tag)
    
    let navigationController = UINavigationController(rootViewController: viewController)
    navigationController.navigationBar.prefersLargeTitles = true
    navigationController.tabBarItem = tabBarItem
    return navigationController
  }
  
}
