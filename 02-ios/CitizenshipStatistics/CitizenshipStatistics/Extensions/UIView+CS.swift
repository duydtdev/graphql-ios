//
//  UIView+CS.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit

extension UIView {
  
  func setCornerAndShadow(corner: CGFloat = 5.0, shadow: CGFloat = 5.0, shadowColor: CGColor = UIColor.lightGray.cgColor, shadowOpacity: Float = 0.3) {
    
    self.layer.cornerRadius = corner
    self.layer.shadowColor = shadowColor
    self.layer.shadowOpacity = shadowOpacity
    self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    self.layer.shadowRadius = shadow
  }
  
  func applyGradient(colours: [UIColor]) {
    
    let gradient = CAGradientLayer()
    gradient.frame = self.bounds
    gradient.colors = colours.map { $0.cgColor }
    gradient.startPoint = CGPoint(x: 1, y: 0)
    gradient.endPoint = CGPoint(x: 0, y: 0)
    self.layer.insertSublayer(gradient, at: 0)
  }
}
