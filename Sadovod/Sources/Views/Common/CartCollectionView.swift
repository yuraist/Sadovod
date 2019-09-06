//
//  CartCollectionView.swift
//  Sadovod
//
//  Created by Yura Istomin on 06/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CartCollectionView: UICollectionView {
  
  init() {
    super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    backgroundColor = .white
    register(CartCollectionViewCell.self, forCellWithReuseIdentifier: CartCollectionViewCell.cellId)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
