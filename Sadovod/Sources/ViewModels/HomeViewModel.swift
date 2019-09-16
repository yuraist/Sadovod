//
//  HomeViewModel.swift
//  Sadovod
//
//  Created by Yura Istomin on 16/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct HomeViewModel {
  
  let popularCategories = [
    PopularCategory(id: "9", title: "Женщинам", productCount: "", imageName: "Women"),
    PopularCategory(id: "143", title: "Мужчинам", productCount: "", imageName: "Men"),
    PopularCategory(id: "60", title: "Детям", productCount: "", imageName: "Kids"),
    PopularCategory(id: "781", title: "Аксессуары", productCount: "", imageName: "Accessories"),
    PopularCategory(id: "80", title: "Сумки", productCount: "", imageName: "Bags"),
    PopularCategory(id: "100", title: "Текстиль", productCount: "", imageName: "Textile")
  ]
  
  var isUserAuthorized: Bool {
    return Token.shared.userIsAuthorized ?? false
  }
}
