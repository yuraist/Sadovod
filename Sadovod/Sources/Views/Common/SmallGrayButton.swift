//
//  SmallGrayButton.swift
//  Sadovod
//
//  Created by Yura Istomin on 07/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class SmallGrayButton: UIButton {
  
  init(title: String) {
    super.init(frame: .zero)
    
    setTitle(title.uppercased(), for: .normal)
    setupAppearance()
  }
  
  init(icon: UIImage) {
    super.init(frame: .zero)
    
    setImage(icon.withRenderingMode(.alwaysTemplate), for: .normal)
    setupAppearance()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupAppearance() {
    tintColor = Constants.Color.blue
    backgroundColor = Constants.Color.grayButton
    setTitleColor(Constants.Color.blue, for: .normal)
    titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
    layer.cornerRadius = 11
  }
  
}
