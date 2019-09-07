//
//  BlueRoundedButton.swift
//  Sadovod
//
//  Created by Yura Istomin on 07/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class BlueRoundedButton: UIButton {
  
  init(title: String) {
    super.init(frame: .zero)
    
    setTitle(title.uppercased(), for: .normal)
    setupAppearance()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupAppearance() {
    backgroundColor = Constants.Color.blue
    setTitleColor(.white, for: .normal)
    titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
    
    layer.cornerRadius = 20
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = .init(width: 0, height: 1)
    layer.shadowRadius = 8
    layer.shadowOpacity = 0.1
  }
  
}
