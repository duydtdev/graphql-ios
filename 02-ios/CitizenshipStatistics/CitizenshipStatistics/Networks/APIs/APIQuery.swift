//  This file was automatically generated and should not be edited.

import Apollo

public final class AllCitiesQuery: GraphQLQuery {
  public static let operationString =
    "query AllCities {\n  allCities {\n    __typename\n    id\n    name\n    population\n    coordinate\n    area\n    zip\n    year\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allCities", type: .nonNull(.list(.nonNull(.object(AllCity.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allCities: [AllCity]) {
      self.init(snapshot: ["__typename": "Query", "allCities": allCities.map { (value: AllCity) -> Snapshot in value.snapshot }])
    }

    public var allCities: [AllCity] {
      get {
        return (snapshot["allCities"] as! [Snapshot]).map { (value: Snapshot) -> AllCity in AllCity(snapshot: value) }
      }
      set {
        snapshot.updateValue(newValue.map { (value: AllCity) -> Snapshot in value.snapshot }, forKey: "allCities")
      }
    }

    public struct AllCity: GraphQLSelectionSet {
      public static let possibleTypes = ["City"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("population", type: .nonNull(.scalar(Int.self))),
        GraphQLField("coordinate", type: .nonNull(.scalar(String.self))),
        GraphQLField("area", type: .nonNull(.scalar(Int.self))),
        GraphQLField("zip", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, population: Int, coordinate: String, area: Int, zip: String, year: String) {
        self.init(snapshot: ["__typename": "City", "id": id, "name": name, "population": population, "coordinate": coordinate, "area": area, "zip": zip, "year": year])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var population: Int {
        get {
          return snapshot["population"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "population")
        }
      }

      public var coordinate: String {
        get {
          return snapshot["coordinate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinate")
        }
      }

      public var area: Int {
        get {
          return snapshot["area"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "area")
        }
      }

      public var zip: String {
        get {
          return snapshot["zip"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "zip")
        }
      }

      public var year: String {
        get {
          return snapshot["year"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "year")
        }
      }
    }
  }
}

public final class CreateCityMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateCity($area: Int!, $coordinate: String!, $name: String!, $population: Int!, $year: String!, $zip: String!) {\n  createCity(area: $area, coordinate: $coordinate, name: $name, population: $population, year: $year, zip: $zip, countryId: \"cjgf20u3n5huq0130kgc4e6hs\") {\n    __typename\n    id\n    name\n    population\n    coordinate\n    area\n    zip\n    year\n  }\n}"

  public var area: Int
  public var coordinate: String
  public var name: String
  public var population: Int
  public var year: String
  public var zip: String

  public init(area: Int, coordinate: String, name: String, population: Int, year: String, zip: String) {
    self.area = area
    self.coordinate = coordinate
    self.name = name
    self.population = population
    self.year = year
    self.zip = zip
  }

  public var variables: GraphQLMap? {
    return ["area": area, "coordinate": coordinate, "name": name, "population": population, "year": year, "zip": zip]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createCity", arguments: ["area": GraphQLVariable("area"), "coordinate": GraphQLVariable("coordinate"), "name": GraphQLVariable("name"), "population": GraphQLVariable("population"), "year": GraphQLVariable("year"), "zip": GraphQLVariable("zip"), "countryId": "cjgf20u3n5huq0130kgc4e6hs"], type: .object(CreateCity.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createCity: CreateCity? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createCity": createCity.flatMap { (value: CreateCity) -> Snapshot in value.snapshot }])
    }

    public var createCity: CreateCity? {
      get {
        return (snapshot["createCity"] as? Snapshot).flatMap { CreateCity(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createCity")
      }
    }

    public struct CreateCity: GraphQLSelectionSet {
      public static let possibleTypes = ["City"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("population", type: .nonNull(.scalar(Int.self))),
        GraphQLField("coordinate", type: .nonNull(.scalar(String.self))),
        GraphQLField("area", type: .nonNull(.scalar(Int.self))),
        GraphQLField("zip", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, population: Int, coordinate: String, area: Int, zip: String, year: String) {
        self.init(snapshot: ["__typename": "City", "id": id, "name": name, "population": population, "coordinate": coordinate, "area": area, "zip": zip, "year": year])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var population: Int {
        get {
          return snapshot["population"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "population")
        }
      }

      public var coordinate: String {
        get {
          return snapshot["coordinate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "coordinate")
        }
      }

      public var area: Int {
        get {
          return snapshot["area"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "area")
        }
      }

      public var zip: String {
        get {
          return snapshot["zip"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "zip")
        }
      }

      public var year: String {
        get {
          return snapshot["year"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "year")
        }
      }
    }
  }
}