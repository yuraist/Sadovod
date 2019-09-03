//
//  PopularCategoryCollectionView.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class PopularCategoriesCollectionView: UICollectionView {
  
  let delegateAndDataSource = PopularCategoriesDataSource()
  
  init() {
    super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    translatesAutoresizingMaskIntoConstraints = false
    register(PopularCategoryCollectionViewCell.self, forCellWithReuseIdentifier: PopularCategoryCollectionViewCell.cellId)
    showsHorizontalScrollIndicator = false
    contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
    backgroundColor = .white
    
    if let collectionViewLayout = collectionViewLayout as? UICollectionViewFlowLayout {
      collectionViewLayout.scrollDirection = .horizontal
    }
    
    delegate = delegateAndDataSource
    dataSource = delegateAndDataSource
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
