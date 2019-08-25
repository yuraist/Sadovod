//
//  JSONSerializer.swift
//  Sadovod
//
//  Created by Yura Istomin on 25/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct JSONSerializer {
  
  static func jsonObject(with data: Data) -> [String: Any]? {
    let jsonObject = try? JSONSerialization.jsonObject(with: data, options: [])
    return jsonObject as? [String: Any]
  }
  
}
