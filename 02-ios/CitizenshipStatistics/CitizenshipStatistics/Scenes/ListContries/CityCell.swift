//
//  CityCell.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {

  // MARK: - IBOutlets
  @IBOutlet weak var containView: UIView!{
    didSet {
      containView.setCornerAndShadow()
    }
  }
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var coordinateLabel: UILabel!
  @IBOutlet weak var areaInputAreaView: InputAreaView!
  @IBOutlet weak var populationInputAreaView: InputAreaView!
  @IBOutlet weak var zipInputAreaView: InputAreaView!
  @IBOutlet weak var yearInputAreaView: InputAreaView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    // Initialization code
    }
}
