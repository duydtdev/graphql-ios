//
//  UIFont+CS.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit

extension UIFont {
  
  struct CS {
    
    static func rounded(size fontSize: CGFloat) -> UIFont {
      if let font = UIFont(name: "Rounded-X M+ 2c", size: fontSize) {
        return font
      } else {
        return UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight.regular)
      }
    }
  }
}
