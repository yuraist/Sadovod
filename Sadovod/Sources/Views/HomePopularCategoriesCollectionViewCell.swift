//
//  HomePopularCategoriesCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit
import ConvenientLayout

class HomePopularCategoriesCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "homePopularCellId"
  
  let title: UILabel = {
    let label = UILabel()
    label.text = "Популярные категории"
    label.font = UIFont.preferredFont(forTextStyle: .title2)
    return label
  }()
  
  let popularCategoriesCollectionView = PopularCategoriesCollectionView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    addSubviews(title, popularCategoriesCollectionView)
  }
  
  fileprivate func setupLayout() {
    title.anchor(top: topAnchor,
                 leading: leadingAnchor,
                 bottom: nil,
                 trailing: trailingAnchor,
                 padding: .init(top: 16, left: 16, bottom: 0, right: 16),
                 size: .init(width: 0, height: 26))
    
    popularCategoriesCollectionView.anchor(top: title.bottomAnchor,
                                           leading: leadingAnchor,
                                           bottom: bottomAnchor,
                                           trailing: trailingAnchor,
                                           padding: .init(top: 12, left: 0, bottom: 12, right: 0),
                                           size: .init(width: 0, height: PopularCategoryCollectionViewCell.height))
  }
  
}
