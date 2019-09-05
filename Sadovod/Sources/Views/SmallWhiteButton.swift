//
//  SmallWhiteButton.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class SmallWhiteButton: UIButton {
  
  init(title: String) {
    super.init(frame: .zero)
    
    setTitle(title.uppercased(), for: .normal)
    setupAppearance()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupAppearance() {
    backgroundColor = .white
    setTitleColor(UIColor(named: "Blue"), for: .normal)
    titleLabel?.font = UIFont.systemFont(ofSize: 15)
    
    layer.cornerRadius = 14
  }
}
