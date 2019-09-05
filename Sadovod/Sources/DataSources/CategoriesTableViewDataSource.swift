//
//  CategoriesTableViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CategoriesTableViewDataSource: NSObject, UITableViewDataSource {
  
  var categories = [ProductCategory(id: "1", name: "Женская одежда", news: "123", productCount: "56302", lux: "302")]
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return categories.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CatalogCategoryTableViewCell.cellId, for: indexPath) as! CatalogCategoryTableViewCell
    
    let category = categories[indexPath.row]
    cell.categoryTitle.text = category.name
    cell.blueCount.text = category.productCount
    cell.greenCount.text = category.news
    cell.yellowCount.text = category.lux
    
    return cell
  }
  
}
