//
//  HomeVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
  
  static let navigationTitle = "Главная"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = HomeVC.navigationTitle
  }
  
  fileprivate func addSubviews() {
    
  }
  
  fileprivate func setupLayout() {
    
  }
}
