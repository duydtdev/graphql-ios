//
//  UIViewController+CS.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit

extension UIViewController {
  
  /// This function to set navigation bar style
  final func setUpNavigationBarStyle() {
    
    // Set background and tint color, disable default line of navigation
    self.navigationController?.navigationBar.barTintColor = UIColor.white
    self.navigationController?.navigationBar.tintColor = UIColor.CS.greenDarkColor
    self.navigationController?.navigationBar.isTranslucent = false
    self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
    
    // Set shadow for navigation
    self.navigationController?.navigationBar.layer.shadowColor = UIColor.CS.lightColor.cgColor
    self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    self.navigationController?.navigationBar.layer.shadowRadius = 4.0
    self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
  }
  
  /// Customize the Navigation Item with providing `title`
  ///
  /// - Parameter title: Title of the View Controller
  func configureNavigationItem(withTitle title: String) {
    let label = UILabel()
    label.textAlignment = .center
    label.text = title
    label.font = UIFont.CS.rounded(size: 17)
    label.textColor = UIColor.CS.greenDarkColor
    label.sizeToFit()
    navigationItem.titleView = label
  }
}
