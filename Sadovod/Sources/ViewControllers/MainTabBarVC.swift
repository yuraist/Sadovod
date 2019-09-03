//
//  MainTabBarVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViewControllers()
  }
  
  fileprivate func setupViewControllers() {
    viewControllers = [HomeVC.createNavigationController(withTitle: "Главная", imageName: "Home", tag: 0),
                       CatalogVC.createNavigationController(withTitle: "Каталог", imageName: "Grid", tag: 1),
                       CartVC.createNavigationController(withTitle: "Корзина", imageName: "Cart", tag: 2),
                       ProfileVC.createNavigationController(withTitle: "Профиль", imageName: "Man", tag: 3),
                       InfoVC.createNavigationController(withTitle: "Инфо", imageName: "Info", tag: 4)]
  }

}
