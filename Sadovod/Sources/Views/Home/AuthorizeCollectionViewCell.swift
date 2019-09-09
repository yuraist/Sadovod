//
//  AuthorizeCollectionViewCell.swift
//  Sadovod
//
//  Created by Yura Istomin on 05/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class AuthorizeCollectionViewCell: UICollectionViewCell {
  
  static let cellId = "authorizeCellId"
  static let cellHeight: CGFloat = 183
  
  let background: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "PaleBlue")
    view.layer.cornerRadius = 10
    
    // Shadow
    view.layer.shadowOffset = CGSize(width: 0, height: 5)
    view.layer.shadowColor = UIColor.black.cgColor
    view.layer.shadowOpacity = 0.1
    view.layer.shadowRadius = 12
    return view
  }()
  
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.preferredFont(forTextStyle: .title2)
    label.text = "Авторизация"
    return label
  }()
  
  let userIcon: UIImageView = {
    let imageView = UIImageView(image: #imageLiteral(resourceName: "User"))
    return imageView
  }()
  
  let messageLabel: UILabel = {
    let label = UILabel()
    label.text = "Вы не вошли в свой аккаунт. Чтобы оформить заказ, войдите или зарегистрируйтесь."
    label.font = UIFont.systemFont(ofSize: 15)
    label.numberOfLines = 0
    return label
  }()
  
  let authorizeButton: SmallWhiteButton = SmallWhiteButton(title: "Авторизация")
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setupLayout()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func addSubviews() {
    addSubview(background)
    background.addSubviews(title, messageLabel, userIcon, authorizeButton)
  }
  
  fileprivate func setupLayout() {
    background.anchor(top: topAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: trailingAnchor,
                      padding: .init(top: 12, left: 16, bottom: 16, right: 16))
    
    title.anchor(top: background.topAnchor,
                 leading: background.leadingAnchor,
                 bottom: nil,
                 trailing: nil,
                 padding: .init(top: 16, left: 16, bottom: 0, right: 0),
                 size: .init(width: 0, height: 28))
    
    userIcon.anchor(top: title.topAnchor,
                    leading: nil,
                    bottom: nil,
                    trailing: background.trailingAnchor,
                    padding: .init(top: 0, left: 0, bottom: 0, right: 16),
                    size: .init(width: 28, height: 28))
    
    messageLabel.anchor(top: title.bottomAnchor,
                        leading: title.leadingAnchor,
                        bottom: nil,
                        trailing: nil,
                        padding: .init(top: 2, left: 0, bottom: 0, right: 0),
                        size: .init(width: 240, height: 54))
    
    authorizeButton.anchor(top: messageLabel.bottomAnchor,
                           leading: messageLabel.leadingAnchor,
                           bottom: nil,
                           trailing: nil,
                           padding: .init(top: 12, left: 0, bottom: 0, right: 0),
                           size: .init(width: 140, height: 28))
  }
}
