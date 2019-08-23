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
  
}
