//
//  APIClientTests.swift
//  SadovodTests
//
//  Created by Yura Istomin on 23/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import XCTest
@testable import Sadovod

class APIClientTests: XCTestCase {
  
  func testAPIClient_checkToken_returnsValidToken() {
    // given
    let promise = expectation(description: "Get a valid token")
    let client = APIClient.shared
    var token: Token?
    
    // when
    client.checkToken(catalogKey: "") {(result) in
      switch result {
      case .success(let response):
        token = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    // then
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(token)
  }
  
  func testAPIClient_fetchCategoryList_returnsCategoryList() {
    
    Token.shared = Token(catalogKey: "TKOtFqgbFYLbmWepjfAoArqs71164169", superKey: nil)
    let promise = expectation(description: "Category list")
    let client = APIClient.shared
    var categoryList: [ProductCategory]?
    
    client.fetchCategoryList { (result) in
      switch result {
      case .success(let response):
        print(response)
        categoryList = response
      case .failure(let error):
        print(error.message)
      }
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(categoryList)
  }
  
}
