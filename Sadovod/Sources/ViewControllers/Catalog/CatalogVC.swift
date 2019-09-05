//
//  CatalogVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CatalogVC: UIViewController {
  
  static let navigationTitle = "Каталог"
  
  let tableView = CategoriesTableView()
  let tableViewDataSource = CategoriesTableViewDataSource()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
    setupTableView()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = CatalogVC.navigationTitle
  }
  
  fileprivate func addSubviews() {
    view.addSubview(tableView)
  }
  
  fileprivate func setupLayout() {
    tableView.fillSuperview()
  }
  
  fileprivate func setupTableView() {
    tableView.dataSource = tableViewDataSource
    tableView.delegate = self
  }
}

extension CatalogVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 44
  }
}
