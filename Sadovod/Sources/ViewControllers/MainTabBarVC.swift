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
    fetchUserToken()
  }
  
  fileprivate func setupViewControllers() {
    viewControllers = [HomeVC.createNavigationController(withTitle: HomeVC.navigationTitle, imageName: "Home", tag: 0),
                       CatalogVC.createNavigationController(withTitle: CatalogVC.navigationTitle, imageName: "Grid", tag: 1),
                       CartVC.createNavigationController(withTitle: CartVC.navigationTitle, imageName: "Cart", tag: 2),
                       ProfileVC.instantiateFromStoryboard(withTitle: ProfileVC.navigationTitle, tag: 3, imageName: "Man"),
                       InfoVC.createNavigationController(withTitle: InfoVC.navigationTitle, imageName: "Info", tag: 4)]
  }
  
  private func fetchUserToken() {
    if let token = Token.getStoredToken() {
      APIClient.shared.checkToken(catalogKey: token.catalogKey) { (result) in
        switch result {
        case .success(let response):
          Token.shared = response
        case .failure(let error):
          print(error.message)
        }
      }
    }
  }
}
