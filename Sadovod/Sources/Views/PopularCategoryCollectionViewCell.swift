//
//  PopularCategoryCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit
import ConvenientLayout

class PopularCategoryCollectionViewCell: UICollectionViewCell {
  
  static let height: CGFloat = 172
  
  // MARK: - Views
  
  let icon: UIImageView = UIImageView()
  
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    return label
  }()
  
  let productCountLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    label.textColor = UIColor(named: "SubtitleGray")
    return label
  }()
  
  // MARK: - Init
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Settings
  
  fileprivate func addSubviews() {
    addSubviews(icon, title, productCountLabel)
  }
  
  fileprivate func setupLayout() {
    icon.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil,
                size: .init(width: 120, height: 120))
    
    title.anchor(top: icon.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor,
                 padding: .init(top: 12, left: 0, bottom: 0, right: 0),
                 size: .init(width: 0, height: 20))
    
    productCountLabel.anchor(top: title.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
  }
  
}
