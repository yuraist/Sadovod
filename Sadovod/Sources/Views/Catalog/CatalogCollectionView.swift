//
//  CatalogCollectionView.swift
//  Sadovod
//
//  Created by Yura Istomin on 08/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CatalogCollectionView: UICollectionView {
  
  init() {
    super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    backgroundColor = .white
    register(CatalogCollectionViewCell.self, forCellWithReuseIdentifier: CatalogCollectionViewCell.cellId)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
