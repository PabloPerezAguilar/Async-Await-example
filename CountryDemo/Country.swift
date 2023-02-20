//
//  Country.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import Foundation

struct Country: Decodable {
    let name: String
    let code: String
}

extension Country: Identifiable {
    var id: String {
        return code
    }
}

extension Country {
    static func preview() -> Country {
        let jsonString = """
                        {
                            "capital": "Kabul",
                            "code": "AF",
                            "currency": {
                              "code": "AFN",
                              "name": "Afghan afghani",
                              "symbol": "؋"
                            },
                            "flag": "https://restcountries.eu/data/afg.svg",
                            "language": {
                              "code": "ps",
                              "name": "Pashto"
                            },
                            "name": "Afghanistan",
                            "region": "AS"
                        }
                        """
        guard let jsonData = jsonString.data(using: .utf8) else {
            fatalError("could not get json data")
        }
        guard let country = try? JSONDecoder().decode(Country.self, from: jsonData) else {
            fatalError("could not decode json data")
        }
        return country
    }
}

/*

*/


