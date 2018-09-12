//
//  AddCityController.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit
import Apollo

class AddCityController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var containView: UIView! {
    didSet {
      containView.setCornerAndShadow()
    }
  }
  @IBOutlet weak var areaInputAreaView: InputAreaView!
  @IBOutlet weak var nameInputAreaView: InputAreaView!
  @IBOutlet weak var coordinateInputAreaView: InputAreaView!
  @IBOutlet weak var populationInputAreaView: InputAreaView!
  @IBOutlet weak var zipInputAreaView: InputAreaView!
  @IBOutlet weak var yearInputAreaView: InputAreaView!
  
  // MARK: - Lifecycles
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Configuration navigation
    setUpNavigationBarStyle()
    configureNavigationItem(withTitle: Title.navigation.addCity.title)
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(cancel))
  }
  
  @objc private func cancel() {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func addCity(_ sender: Any) {
    
    // Create a query to request
    let createCityMutation = CreateCityMutation(
      area: Int(areaInputAreaView.inputTextField.text!)!,
      coordinate: coordinateInputAreaView.inputTextField.text!,
      name: nameInputAreaView.inputTextField.text!,
      population: Int(populationInputAreaView.inputTextField.text!)!,
      year: yearInputAreaView.inputTextField.text!,
      zip: zipInputAreaView.inputTextField.text!)
    
    let apollo = ApolloClient(url: URL(string: endpoint)!)
    apollo.perform(mutation: createCityMutation) {  [weak self] result, error in
      if let error = error {
        print("Something wrong: \(error)")
      } else {
        self?.dismiss(animated: true, completion: nil)
      }
    }
  }
}
