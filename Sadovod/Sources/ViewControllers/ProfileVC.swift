//
//  ProfileVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class ProfileVC: UITableViewController {
  
  static let navigationTitle = "Профиль"
  
  class func instantiateFromStoryboard(withTitle title: String, tag: Int, imageName: String) -> UINavigationController {
    let storyboard = UIStoryboard(name: "Profile", bundle: nil)
    let profileVC = storyboard.instantiateViewController(withIdentifier: "profileVC") as! ProfileVC
    let tabBarImage = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
    let tabBarItem = UITabBarItem(title: title, image: tabBarImage, tag: tag)
    
    let navigationController = UINavigationController(rootViewController: profileVC)
    navigationController.navigationBar.prefersLargeTitles = true
    navigationController.tabBarItem = tabBarItem
    return navigationController
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupTableView()
    setupNavigationBar()
    addSubviews()
    setupLayout()
  }
  
  private func setupTableView() {
    tableView.keyboardDismissMode = .onDrag
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = ProfileVC.navigationTitle
  }
  
  fileprivate func addSubviews() {
    
  }
  
  fileprivate func setupLayout() {
    
  }
}
