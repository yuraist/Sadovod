//
//  ProfileVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
  
  static let navigationTitle = "Профиль"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = ProfileVC.navigationTitle
  }
  
  fileprivate func addSubviews() {
    
  }
  
  fileprivate func setupLayout() {
    
  }
}
