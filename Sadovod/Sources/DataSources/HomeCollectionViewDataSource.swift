//
//  HomeCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if indexPath.item == 0 {
      return collectionView.dequeueReusableCell(withReuseIdentifier: HomePopularCategoriesCollectionViewCell.cellId, for: indexPath) as! HomePopularCategoriesCollectionViewCell
    }
    
    return collectionView.dequeueReusableCell(withReuseIdentifier: AuthorizeCollectionViewCell.cellId, for: indexPath)
  }
  
}
