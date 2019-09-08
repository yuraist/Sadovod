//
//  RoundedWhiteLabel.swift
//  Sadovod
//
//  Created by Yura Istomin on 08/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class RoundedWhiteLabel: UILabel {
  
  override func drawText(in rect: CGRect) {
    let insets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    super.drawText(in: rect.inset(by: insets))
  }
  
  init() {
    super.init(frame: .zero)
    
    backgroundColor = .white
    font = UIFont.systemFont(ofSize: 12, weight: .medium)
    textAlignment = .center
    textColor = Constants.Color.blue
    layer.cornerRadius = 11
    layer.masksToBounds = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
