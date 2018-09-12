//
//  RoundButton.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit

@IBDesignable
public class RoundButton: UIButton {
  
  @IBInspectable var radius: CGFloat = 0.0 {
    didSet {
      clipsToBounds = true
      layer.cornerRadius = radius
      layer.masksToBounds = true
    }
  }
  
  // MARK: - Initialization
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.applyGradient(colours: [UIColor.CS.greenDarkColor, UIColor.CS.greenLightColor])
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    self.applyGradient(colours: [UIColor.CS.greenDarkColor, UIColor.CS.greenLightColor])
  }
}
