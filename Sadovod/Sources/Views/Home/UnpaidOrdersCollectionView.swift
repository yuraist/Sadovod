//
//  UnpaidOrdersCollectionView.swift
//  Sadovod
//
//  Created by Yura Istomin on 09/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class UnpaidOrdersCollectionView: UICollectionView {
  
  init() {
    super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    backgroundColor = .white
    register(HomePopularCategoriesCollectionViewCell.self, forCellWithReuseIdentifier: HomePopularCategoriesCollectionViewCell.cellId)
    register(AuthorizeCollectionViewCell.self, forCellWithReuseIdentifier: AuthorizeCollectionViewCell.cellId)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
