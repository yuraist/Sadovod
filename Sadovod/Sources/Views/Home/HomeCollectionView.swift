//
//  HomeCollectionView.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeCollectionView: UICollectionView {
  
  init() {
    super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    backgroundColor = .white
    register(HomePopularCategoriesCollectionViewCell.self, forCellWithReuseIdentifier: HomePopularCategoriesCollectionViewCell.cellId)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
