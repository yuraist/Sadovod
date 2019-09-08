//
//  CatalogCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 08/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "catalogCellId"
  
  let image: UIImageView = {
    let image = UIImageView()
    image.layer.cornerRadius = 5
    image.layer.masksToBounds = true
    return image
  }()
  
  let priceLabel = RoundedWhiteLabel()
  let newLabel = RoundedWhiteLabel()
  
  fileprivate let labelsStackView = UIStackView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    labelsStackView.addArrangedSubview(priceLabel)
    labelsStackView.addArrangedSubview(newLabel)
    
    addSubviews(image, labelsStackView)
  }
  
  fileprivate func setupLayout() {
    labelsStackView.axis = .horizontal
    labelsStackView.distribution = .fillProportionally
    labelsStackView.alignment = .fill
    labelsStackView.spacing = 4
    
    image.fillSuperview()
    labelsStackView.anchor(top: nil,
                           leading: leadingAnchor,
                           bottom: bottomAnchor,
                           trailing: trailingAnchor,
                           padding: .init(top: 0, left: 4, bottom: 8, right: 4),
                           size: .init(width: 0, height: 22))
  }
  
}

