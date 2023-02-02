// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation


// MARK: - Welcome
struct AnatomyModel: Codable {
    let data: [innerData]
    let source: [Source]
    
}


// MARK: - innerData
struct innerData: Codable {
    let idNation:String
    let nation: String
    let idYear: Int
    let year: String
    let population: Int
    let slugNation: String

    enum CodingKeys: String, CodingKey {
        case idNation = "ID Nation"
        case nation = "Nation"
        case idYear = "ID Year"
        case year = "Year"
        case population = "Population"
        case slugNation = "Slug Nation"
    }
}

// MARK: - Source
struct Source: Codable {
    let measures: [String]
    let annotations: Annotations
    let name: String
    //let substitutions: String
}

// MARK: - Annotations
struct Annotations: Codable {
    let sourceName, sourceDescription, datasetName: String
    let datasetLink: String
    let tableID, topic, subtopic: String

    enum CodingKeys: String, CodingKey {
        case sourceName = "source_name"
        case sourceDescription = "source_description"
        case datasetName = "dataset_name"
        case datasetLink = "dataset_link"
        case tableID = "table_id"
        case topic, subtopic
    }
}
extension AnatomyModel {
   static func loadMockData()-> AnatomyModel?{
        let decoder = JSONDecoder()
        let jsonString = """
{
        "data": [
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2020,
                "Year": "2020",
                "Population": 326569308,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2019,
                "Year": "2019",
                "Population": 324697795,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2018,
                "Year": "2018",
                "Population": 322903030,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2017,
                "Year": "2017",
                "Population": 321004407,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2016,
                "Year": "2016",
                "Population": 318558162,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2015,
                "Year": "2015",
                "Population": 316515021,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2014,
                "Year": "2014",
                "Population": 314107084,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2013,
                "Year": "2013",
                "Population": 311536594,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2013,
                "Year": "2013",
                "Population": 311536595,
                "Slug Nation": "united-states"
            },
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2013,
                "Year": "2013",
                "Population": 311536596,
                "Slug Nation": "united-states"
            }
            ,
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2013,
                "Year": "2013",
                "Population": 311536597,
                "Slug Nation": "united-states"
            }
            ,
            {
                "ID Nation": "01000US",
                "Nation": "United States",
                "ID Year": 2013,
                "Year": "2013",
                "Population": 311536598,
                "Slug Nation": "united-states"
            }


        ],
        "source": [
            {
                "measures": [
                    "Population"
                ],
                "annotations": {
                    "source_name": "Census Bureau",
                    "source_description": "The American Community Survey (ACS) is conducted by the US Census and sent to a portion of the population every year.",
                    "dataset_name": "ACS 5-year Estimate",
                    "dataset_link": "http://www.census.gov/programs-surveys/acs/",
                    "table_id": "B01003",
                    "topic": "Diversity",
                    "subtopic": "Demographics"
                },
                "name": "acs_yg_total_population_5",
                "substitutions": []
            }
        ]
    }
"""
        
       
        
        let jsonData = Data(jsonString.utf8)
               do {
                   let response = try decoder.decode(AnatomyModel.self, from: jsonData)
                   print(response)
                   return response
               } catch DecodingError.keyNotFound(let key, let context) {
                   Swift.print("could not find key \(key) in JSON: \(context.debugDescription)")
               } catch DecodingError.valueNotFound(let type, let context) {
                   Swift.print("could not find type \(type) in JSON: \(context.debugDescription)")
               } catch DecodingError.typeMismatch(let type, let context) {
                   Swift.print("type mismatch for type \(type) in JSON: \(context.debugDescription)")
               } catch DecodingError.dataCorrupted(let context) {
                   Swift.print("data found to be corrupted in JSON: \(context.debugDescription)")
               } catch let error as NSError {
                   NSLog("Error in read(from:ofType:) domain= \(error.domain), description= \(error.localizedDescription)")
               }
               return nil
    }
    
}


