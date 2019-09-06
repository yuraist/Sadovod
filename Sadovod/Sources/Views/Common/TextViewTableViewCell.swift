//
//  TextViewTableViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class TextViewTableViewCell: UITableViewCell {
  
  let textView: UITextView = {
    let textView = UITextView()
    textView.isEditable = true
    textView.backgroundColor = .white
    textView.showsVerticalScrollIndicator = false
    textView.font = UIFont.systemFont(ofSize: 17)
    return textView
  }()
  
  
  let textLengthLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.font = UIFont.systemFont(ofSize: 17)
    label.textColor = UIColor(named: "SubtitleGray")
    label.textAlignment = .right
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubview()
    setupLayout()
  }
  
  fileprivate func addSubview() {
    addSubviews(textView, textLengthLabel)
  }
  
  fileprivate func setupLayout() {
    textView.anchor(top: topAnchor,
                    leading: leadingAnchor,
                    bottom: bottomAnchor,
                    trailing: trailingAnchor,
                    padding: .init(top: 4, left: 12, bottom: 12, right: 52))
    
    textLengthLabel.anchor(top: textView.topAnchor,
                           leading: textView.trailingAnchor,
                           bottom: nil,
                           trailing: trailingAnchor,
                           padding: .init(top: 8, left: 4, bottom: 0, right: 16),
                           size: .init(width: 0, height: 20))
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
