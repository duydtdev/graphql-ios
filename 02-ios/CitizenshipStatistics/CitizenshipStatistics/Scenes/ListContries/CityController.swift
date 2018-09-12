//
//  CityController.swift
//  CitizenshipStatistics
//  Copyright © 2018 Duy Doan. All rights reserved.
//

import UIKit
import Apollo

class CityController: UITableViewController {
  
  // MARK: - IBOutlets
  @IBOutlet var cityTableView: UITableView!
  
  // MARK: - Properties
  var cities: [AllCitiesQuery.Data.AllCity] = [] {
    didSet {
      cityTableView.reloadData()
    }
  }
  
  
  // MARK: - Viewcycles
  override func viewDidLoad() {
    super.viewDidLoad()
    
    cityTableView.allowsSelection = false
    cityTableView.separatorColor = .clear
    
    // Configuration navigation
    setUpNavigationBarStyle()
    configureNavigationItem(withTitle: Title.navigation.cities.title)
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.plain, target: self, action: #selector(addCity))
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    // Create a query to request
    let allCitiesQuery = AllCitiesQuery()
    
    let apollo = ApolloClient(url: URL(string: endpoint)!)
    apollo.fetch(query: allCitiesQuery) {  [weak self] result, error in
      if let error = error {
        print("Something wrong: \(error)")
      } else {
        print("City Count: \(String(describing: result?.data?.allCities.count))")
        guard let cities = result?.data?.allCities else { return }
        self?.cities = cities.map { $0 }
      }
    }
  }
  
  @objc private func addCity() {
    if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddCityNavigationController") as? UINavigationController
    {
      present(vc, animated: true, completion: nil)
    }
  }
  
  // MARK: - UITableViewDataSource
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.cities.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! CityCell
    
    // Get city entity and then set it to tableview cell
    let city = self.cities[indexPath.row]
    cell.cityLabel.text = "\(city.name)  "
    cell.coordinateLabel.text = city.coordinate
    cell.areaInputAreaView.inputTextField.text = "\(city.area)"
    cell.populationInputAreaView.inputTextField.text = "\(city.population)"
    cell.zipInputAreaView.inputTextField.text = city.zip
    cell.yearInputAreaView.inputTextField.text = city.year
    
    return cell
  }
}
