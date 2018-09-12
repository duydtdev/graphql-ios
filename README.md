# GraphQL in iOS

## Descriptions
> This repository to contain all knowledges about ``GraphQL in iOS``.

## Contents
### 1. The introduction about GraphQL
What is GraphQL?
* GraphQL is a query language for APIs and a runtime for fulfilling those queries with your existing data. GraphQL provides a complete and understandable description of the data in your API, gives clients the power to ask for exactly what they need and nothing more, makes it easier to evolve APIs over time, and enables powerful developer tools.

What difference between GraphQL and REST?
* `/countries`

```json
[  
   {  
      "id":"1",
      "name":"Vietnam",
      "population":95414640
   },
   {  
      "id":"2",
      "name":"Thailand",
      "population":68863514
   }
]
```
* `/countries/<id>/cities`

```json
[  
   {  
      "id":"1",
      "name":"AnGiang",
      "area":35367
   },
   {  
      "id":"2",
      "name":"CaMau",
      "area":52949
   }
]
```
Problem 1: How do clients get first two cities in counties ?

```json
[  {  
      "id":"1",
      "name":"Vietnam",
      "cities":[  
         {  
            "id":"1",
            "name":"DaNang"
         },
         {  
            "id":"2",
            "name":"DienBien"
         }
      ]
   }]
```
* REST
    * Solution 1: Create multiple requests and then calculate to find the right result afterward
        * /countries/1/cities
        * /countries/2/cities
        * /countries/3/cities
        * /countries/n/cities
    * Solution 2: Talk to back-end developers to adjust the API in the proper way /countries
  
  ```json
  [  {  
      "id":"1",
      "name":"Vietnam",
      "cities":[  
         {  
            "id":"1",
            "name":"DaNang"
         },
         …
   }]
  ```
* GraphQL
  * Solution: Just change a little in queries to get the right result
  
  ```swift
  allCountries {
    id
    name
    cities(first: 2) {
      id
      name
    }
  }
  ```
  Result:
  
  ```json
  [  {  
      "id":"1",
      "name":"Vietnam",
      "cities":[  
         {  
            "id":"1",
            "name":"DaNang"
         },
         …
   }]
  ```
Problem 2: How do clients reduce some fields in the response data ?

```json
{  
      "id":"1",
      "name":"DaNang",
      "zip":"550000",
      "population":1046200,
      "year":"2018",
      "coordinate":"6°01′55″N 108°13′14″E"
    }
]
```
* REST
  * Solution: Talk to back-end developers to adjust the API
* GraphQL
  * Solution: Just change a queries to get the right result

Query:

```swift
allCities {
   id
   name
   zip
   coordinate }
```
Result:

```json
{  
      "id":"1",
      "name":"DaNang",
      "zip":"550000",
      "coordinate":"6°01′55″N 108°13′14″E"
     }
```
* We can `READ` data by `queries`

Query:

```swift
query AllCities {
  allCities {
    id
    name
    zip
  }
}
```
Result:

```json[
{  
      "id":"1",
      "name":"DaNang",
      "zip":"550000",
      }
 ]
```
* We can `WRITE & READ` data by `mutations`

Query:

```swift
mutation CreateCity {
    createCity( name: "DaNang", zip: "550000") {
    id
    name
    zip
  }
}
```
Result:
```json
{  
   "data":{  
      "createCity":{  
         "id":"1",
         "name":"DaNang",
         "zip":"550000"
      }
   }
}
```
### 2. How to use GraphQL in iOS
* Two important dependencies is used to make sure that we can integrate to call GraphQL endpoints in iOS
    * Apollo iOS
        * Apollo iOS is a strongly-typed, caching GraphQL client for iOS, written in Swift
        * It allows you to execute queries and mutations against a GraphQL server, and returns results as query-specific Swift types
        * References Link: https://github.com/apollographql/apollo-ios
    * apollo-codegen
        * apollo-codegen will search for GraphQL code in the Xcode project and generate the Swift types
        * Install apollo-codegen: `npm install -g apollo-codegen`
* Why do we need apollo-codegen dependency?
    * Using apollo-codegen to download Schema file
        * `apollo-codegen download-schema _ENDPOINT_--output schema.json`
    * Creating a Run Script Phase in Build Phases

### 3. The common problems and how to deal when working with GraphQL
* How to read schema file easily ?
    * Using `graphqlviz`
        * References Link: https://github.com/sheerun/graphqlviz

## Meta
Author: Duy Doan

Distributed under the MIT license. See ``LICENSE`` for more information.