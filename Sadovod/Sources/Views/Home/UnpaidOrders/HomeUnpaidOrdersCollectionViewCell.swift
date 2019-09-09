//
//  HomeUnpaidOrdersCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 09/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeUnpaidOrdersCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "unpaidOrdersCellId"
  static var cellHeight: CGFloat {
    return UnpaidOrderCollectionViewCell.cellHeight * 3 + 34
  }
  
  let title: UILabel = {
    let label = UILabel()
    label.text = "Неоплаченные заказы"
    label.font = UIFont.preferredFont(forTextStyle: .title2)
    return label
  }()
  
  let collectionView = UnpaidOrdersCollectionView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    addSubviews(title, collectionView)
  }
  
  fileprivate func setupLayout() {
    title.anchor(top: topAnchor,
                 leading: leadingAnchor,
                 bottom: nil,
                 trailing: nil,
                 padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                 size: .init(width: 0, height: 26))
    
    collectionView.anchor(top: title.bottomAnchor,
                          leading: leadingAnchor,
                          bottom: bottomAnchor,
                          trailing: trailingAnchor,
                          padding: .init(top: 8, left: 0, bottom: 0, right: 0))
  }
}
