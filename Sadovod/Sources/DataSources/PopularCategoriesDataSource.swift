//
//  PopularCategoriesDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class PopularCategoriesDataSource: NSObject, UICollectionViewDataSource {
  
  var categories = [
    PopularCategory(id: "0", title: "Женщинам", productCount: "63778 товаров", imageName: "Women"),
    PopularCategory(id: "0", title: "Мужчинам", productCount: "63778 товаров", imageName: "Men"),
    PopularCategory(id: "0", title: "Детям", productCount: "63778 товаров", imageName: "Kids"),
    PopularCategory(id: "0", title: "Аксессуары", productCount: "63778 товаров", imageName: "Accessories"),
    PopularCategory(id: "0", title: "Сумки", productCount: "63778 товаров", imageName: "Bags"),
    PopularCategory(id: "0", title: "Текстиль", productCount: "63778 товаров", imageName: "Textile")
  ]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return categories.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCategoryCollectionViewCell.cellId, for: indexPath) as! PopularCategoryCollectionViewCell
    
    let category = categories[indexPath.item]
    cell.title.text = category.title
    cell.productCountLabel.text = category.productCount
    cell.icon.image = UIImage(named: category.imageName)
    
    return cell
  }
}

extension PopularCategoriesDataSource: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 120, height: PopularCategoryCollectionViewCell.height)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 16
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 16
  }
}
