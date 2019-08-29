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
  
  let testPage = 1
  let testCategory = "9"
  var client: APIClient!
  
  override func setUp() {
    client = APIClient.shared
    Token.shared = Token(catalogKey: TestData.token, superKey: nil)
  }
  
  override func tearDown() {
    client = nil
  }
  
  func testAPIClient_checkToken_returnsValidToken() {
    // given
    let promise = expectation(description: "Get a valid token")
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
  
  func testAPIClient_authUser_authorizesSuccessfully() {
    let promise = expectation(description: "Authorized user")
    var authorizationResponse: AuthorizationResponse?
    
    client.authorize(login: TestData.email, password: TestData.password) { (result) in
      switch result {
      case .success(let response):
        authorizationResponse = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(authorizationResponse)
  }
  
  func testAPILClient_fetchUserInfo() {
    let promise = expectation(description: "User info")
    var userInfo: UserInfo?
    
    client.fetchUserInfo { (result) in
      switch result {
      case .success(let response):
        userInfo = response.user
      case .failure(let error):
        print(error.message)
      }
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(userInfo)
  }
  
  func testAPIClient_fetchMainScreenProducts() {
    let promise = expectation(description: "Main screen products")
    var products: [Product]?
    
    client.fetchMainScreenProducts(ofCategory: testCategory, page: testPage) { (result) in
      switch result {
      case .success(let response):
        products = response
      case .failure(let error):
        print(error.message)
      }
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(products)
  }
  
  func testAPIClient_fetchCategoryList_returnsCategoryList() {
    let promise = expectation(description: "Category list")
    var categoryList: [ProductCategory]?
    
    client.fetchCategoryList { (result) in
      switch result {
      case .success(let response):
        categoryList = response
      case .failure(let error):
        print(error.message)
      }
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(categoryList)
  }
  
  func testAPIClient_fetchCategoryTree() {
    let promise = expectation(description: "Category tree")
    var categoryTree: [TreeCategory]?
    
    client.fetchCategoryTree(ofCategory: testCategory) { (result) in
      switch result {
      case .success(let response):
        categoryTree = response.tree
      case .failure(let error):
        print(error.message)
      }
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(categoryTree)
  }
  
  func testAPIClient_fetchProducts() {
    let promise = expectation(description: "Product list")
    var products: [Product]?
    
    client.fetchProducts(ofCategory: testCategory, page: testPage) { (result) in
      switch result {
      case .success(let response):
        products = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(products)
  }
  
  func testAPIClient_fetchProduct() {
    let promise = expectation(description: "Product info")
    let testProductId = "94530"
    var product: DetailProduct?
    
    client.fetchProduct(testProductId) { (result) in
      switch result {
      case .success(let response):
        product = response.product
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(product)
  }
  
  func testAPIClient_addProductToCart() {
    let promise = expectation(description: "Product info")
    let testSize = "1177675"
    var productResponse: UpdateProductInCartResponse?
    
    client.addProductToCart(sizeId: testSize) { (result) in
      switch result {
      case .success(let response):
        productResponse = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(productResponse)
  }
  
  func testAPIClient_removeProductFromCart() {
    let promise = expectation(description: "Product info")
    let testSize = "1177675"
    var productResponse: UpdateProductInCartResponse?
    
    client.removeProductFromCart(sizeId: testSize) { (result) in
      switch result {
      case .success(let response):
        productResponse = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(productResponse)
  }
  
  func testAPIClient_removeAllItemsOfProductFromCart() {
    let promise = expectation(description: "Product info")
    let testProduct = "94530"
    var productResponse: UpdateProductInCartResponse?
    
    client.removeAllItems(ofProduct: testProduct) { (result) in
      switch result {
      case .success(let response):
        productResponse = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(productResponse)
  }
  
  func testAPIClient_fetchCartSummary() {
    let promise = expectation(description: "Product info")
    var cartSummary: CartSummary?
    
    client.fetchCartSummary { (result) in
      switch result {
      case .success(let response):
        cartSummary = response
      case .failure(let error):
        print(error.message)
      }
      
      promise.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    XCTAssertNotNil(cartSummary)
  }
}
