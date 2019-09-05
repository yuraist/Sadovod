//
//  InfoVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class InfoVC: UITableViewController {
  
  static let navigationTitle = "Инфо"
  fileprivate let cellId = "infoCellId"
  fileprivate let titles = ["Частые вопросы", "Задать вопрос", "Доставка", "Оплата"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
    setupTableView()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = InfoVC.navigationTitle
  }
  
  fileprivate func addSubviews() {
    
  }
  
  fileprivate func setupLayout() {
    
  }
  
  fileprivate func setupTableView() {
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return titles.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
    
    cell.accessoryType = .disclosureIndicator
    cell.textLabel?.text = titles[indexPath.row]
    
    return cell
  }
}
