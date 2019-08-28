//
//  UserInfo.swift
//  Sadovod
//
//  Created by Yura Istomin on 28/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct UserInfo: Codable {
  var name, phone, email, pay: String
  var vkConnected: Bool
  
  enum CodingKeys: String, CodingKey {
    case name, phone, email, pay
    case vkConnected = "oauth_vk"
  }
}
