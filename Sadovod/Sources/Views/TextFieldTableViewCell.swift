//
//  TextFieldTableViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
  
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 17)
    label.textColor = UIColor(named: "SubtitleGray")
    return label
  }()
  
  let textField = UITextField()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubview()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubview() {
    addSubviews(title, textField)
  }
  
  fileprivate func setupLayout() {
    
    title.anchor(top: nil,
                 leading: leadingAnchor,
                 bottom: nil,
                 trailing: nil,
                 padding: .init(top: 0, left: 16, bottom: 0, right: 0))
    
    title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
    
    textField.anchor(top: nil,
                     leading: title.trailingAnchor,
                     bottom: nil,
                     trailing: trailingAnchor,
                     padding: .init(top: 0, left: 8, bottom: 0, right: 16),
                     size: .init(width: 0, height: 22))
    
    textField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    textField.widthAnchor.constraint(equalTo: title.widthAnchor).isActive = true
  }
  
}
