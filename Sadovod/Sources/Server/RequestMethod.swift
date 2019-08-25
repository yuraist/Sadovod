//
//  RequestMethod.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

enum RequestMethod: String {
  case get, post
  
  var string: String {
    return self.rawValue.uppercased()
  }
}
