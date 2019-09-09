//
//  UnpaidOrderCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 09/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class UnpaidOrderCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "unpaidOrderCellId"
  static let cellHeight: CGFloat = 78
  
  let orderNumber: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    label.textColor = Constants.Color.graySubtitle
    return label
  }()
  
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    label.numberOfLines = 0
    return label
  }()
  
  let payButton = SmallGrayButton(title: "Оплатить")
  let removeButton: SmallGrayButton = {
    let button = SmallGrayButton(icon: #imageLiteral(resourceName: "Trash"))
    button.backgroundColor = .clear
    return button
  }()
  
  fileprivate let separationLine: UIView = {
    let view = UIView()
    view.backgroundColor = Constants.Color.graySubtitle
    return view
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    addSubviews(orderNumber, title, payButton, removeButton, separationLine)
  }
  
  fileprivate func setupLayout() {
    orderNumber.anchor(top: topAnchor,
                       leading: leadingAnchor,
                       bottom: nil,
                       trailing: nil,
                       padding: .init(top: 8, left: 0, bottom: 0, right: 0))
    
    title.anchor(top: orderNumber.bottomAnchor,
                 leading: leadingAnchor,
                 bottom: separationLine.topAnchor,
                 trailing: nil,
                 padding: .init(top: 2, left: 0, bottom: 8, right: 0),
                 size: .init(width: 190, height: 0))
    
    payButton.anchor(top: nil,
                     leading: title.trailingAnchor,
                     bottom: separationLine.topAnchor,
                     trailing: trailingAnchor,
                     padding: .init(top: 0, left: 8, bottom: 8, right: 0),
                     size: .init(width: 0, height: 28))
    
    removeButton.anchor(top: topAnchor,
                        leading: nil,
                        bottom: payButton.topAnchor,
                        trailing: trailingAnchor,
                        padding: .init(top: 0, left: 0, bottom: 5, right: 0))
    removeButton.widthAnchor.constraint(equalTo: removeButton.heightAnchor).isActive = true
    
    separationLine.anchor(top: nil,
                          leading: leadingAnchor,
                          bottom: bottomAnchor,
                          trailing: trailingAnchor,
                          padding: .init(top: 0, left: 0, bottom: 0, right: 0),
                          size: .init(width: 0, height: 0.5))
  }
}
