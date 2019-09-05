//
//  CatalogCategoryTableViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class TagLabel: UILabel {
  
  init(color: UIColor) {
    super.init(frame: .zero)
    
    backgroundColor = color
    font = UIFont.systemFont(ofSize: 14, weight: .medium)
    textColor = .white
    textAlignment = .center
    
    layer.cornerRadius = 14
    layer.masksToBounds = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

class CatalogCategoryTableViewCell: UITableViewCell {
  
  static let cellId = "catalogCategoryCellId"
  
  let categoryTitle: UILabel = {
    let label = UILabel()
    label.font = UIFont.preferredFont(forTextStyle: .body)
    label.numberOfLines = 0
    return label
  }()
  
  let blueCount = TagLabel(color: UIColor(named: "TagBlue")!)
  let greenCount = TagLabel(color: UIColor(named: "TagGreen")!)
  let yellowCount = TagLabel(color: UIColor(named: "TagYellow")!)
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    addSubviews(categoryTitle, blueCount, greenCount, yellowCount)
  }
  
  fileprivate func setupLayout() {
    categoryTitle.anchor(top: topAnchor,
                         leading: leadingAnchor,
                         bottom: nil,
                         trailing: nil,
                         padding: .init(top: 11, left: 16, bottom: 0, right: 0),
                         size: .init(width: 140, height: 0))
    
    blueCount.anchor(top: topAnchor,
                     leading: nil,
                     bottom: bottomAnchor,
                     trailing: trailingAnchor,
                     padding: .init(top: 8, left: 0, bottom: 8, right: 16),
                     size: .init(width: 56, height: 0))
    
    greenCount.anchor(top: blueCount.topAnchor,
                      leading: nil,
                      bottom: blueCount.bottomAnchor,
                      trailing: blueCount.leadingAnchor,
                      padding: .init(top: 0, left: 0, bottom: 0, right: 4),
                      size: .init(width: 52, height: 0))
    
    yellowCount.anchor(top: greenCount.topAnchor,
                       leading: nil,
                       bottom: greenCount.bottomAnchor,
                       trailing: greenCount.leadingAnchor,
                       padding: .init(top: 0, left: 12, bottom: 0, right: 4),
                       size: .init(width: 48, height: 0))
  }
}
