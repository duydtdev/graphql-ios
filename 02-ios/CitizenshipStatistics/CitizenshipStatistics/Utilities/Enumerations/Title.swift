//
//  Title.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

enum Title {
  
  enum navigation: String {
    case cities = "CITIES"
    case addCity = "ADD CITY"
    case editCity = "EDIT CITY"
    
    var title: String {
      return rawValue
    }
  }
}
