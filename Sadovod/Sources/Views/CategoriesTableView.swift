//
//  CategoriesTableView.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CategoriesTableView: UITableView {
  
  init() {
    super.init(frame: .zero, style: .plain)
    
    register(CatalogCategoryTableViewCell.self, forCellReuseIdentifier: CatalogCategoryTableViewCell.cellId)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
