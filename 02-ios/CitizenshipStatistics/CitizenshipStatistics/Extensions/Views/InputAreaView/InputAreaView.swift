//
//  InputArea.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit
@IBDesignable
public class InputAreaView: UIView {
  
  // MARK: - IBInspectable
  @IBInspectable public var title: String? {
    didSet {
      titleLabel.text = title
    }
  }
  
  // State hidden of bottom line
  @IBInspectable public var isHiddenBottomLine: Bool = true {
    didSet {
      lineBottomView.alpha = isHiddenBottomLine ? 0.0 : 1.0
    }
  }
  
  // Change editable of inputview
  @IBInspectable public var canEditable: Bool = true {
    didSet {
      inputTextField.isUserInteractionEnabled = canEditable
    }
  }
  
  // MARK: - Properties
  var view: UIView!
  
  // MARK: - IBOutlets
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var inputTextField: UITextField!
  @IBOutlet weak var lineBottomView: UIView!
  
  // MARK: - Initialization
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.xibSetup()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    self.xibSetup()
  }
  
  /// Setup custom view
  func xibSetup() {
    
    /// Store the view that will be loaded from XIB file
    view = loadViewFromNib()
    view.frame = bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(view)
  }
  
  /// Load the .xib file from the bundle in which it's located
  private func loadViewFromNib() -> UIView {
    
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: "InputAreaView", bundle: bundle)
    let viewFromNib = nib.instantiate(withOwner: self, options: nil).first
    return viewFromNib as? UIView ?? UIView()
  }
}
