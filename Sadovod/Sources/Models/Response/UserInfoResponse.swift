//
//  UserInfoResponse.swift
//  Sadovod
//
//  Created by Yura Istomin on 28/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct UserInfoResponse: Codable {
  var user: UserInfo
  var status: Bool
}
