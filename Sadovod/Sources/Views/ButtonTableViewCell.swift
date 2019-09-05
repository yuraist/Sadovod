//
//  ButtonTableViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {
  
  let button: UIButton = {
    let button = UIButton(type: .system)
    button.contentHorizontalAlignment = .left
    return button
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubview()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubview() {
    addSubviews(button)
  }
  
  fileprivate func setupLayout() {
    button.anchor(top: topAnchor,
                    leading: leadingAnchor,
                    bottom: bottomAnchor,
                    trailing: trailingAnchor,
                    padding: .init(top: 8, left: 16, bottom: 8, right: 16))
  }
}

