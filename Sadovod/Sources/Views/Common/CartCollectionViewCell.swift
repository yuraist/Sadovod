//
//  CartCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 06/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "cartCellId"
  static let cellHeight: CGFloat = 180
  
  let background: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 10
    
    // Shadow
    view.layer.shadowOffset = CGSize(width: 0, height: 5)
    view.layer.shadowColor = UIColor.black.cgColor
    view.layer.shadowOpacity = 0.1
    view.layer.shadowRadius = 12
    return view
  }()
  
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.preferredFont(forTextStyle: .title2)
    return label
  }()
  
  let image: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.layer.cornerRadius = 5
    imageView.layer.masksToBounds = true
    return imageView
  }()
  
  let priceLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    label.textColor = Constants.Color.blue
    return label
  }()
  
  let sizeLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    label.textColor = Constants.Color.graySubtitle
    return label
  }()
  
  fileprivate let countLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  let infoStackView = UIStackView()
  
  fileprivate func addSubviews() {
    addSubview(background)
    background.addSubviews(image, infoStackView)
    
    infoStackView.addArrangedSubview(title)
    infoStackView.addArrangedSubview(priceLabel)
    infoStackView.addArrangedSubview(sizeLabel)
  }
  
  fileprivate func setupLayout() {
    background.anchor(top: topAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: trailingAnchor,
                      padding: .init(top: 12, left: 16, bottom: 16, right: 16))
    
    image.anchor(top: background.topAnchor,
                 leading: background.leadingAnchor,
                 bottom: nil,
                 trailing: nil,
                 padding: .init(top: 12, left: 8, bottom: 0, right: 0),
                 size: .init(width: 120, height: 160))
    
    infoStackView.anchor(top: background.topAnchor,
                         leading: image.trailingAnchor,
                         bottom: nil,
                         trailing: background.trailingAnchor,
                         padding: .init(top: 12, left: 12, bottom: 0, right: 8),
                         size: .init(width: 0, height: 66))
    
    infoStackView.axis = .vertical
    infoStackView.alignment = .leading
  }
}
