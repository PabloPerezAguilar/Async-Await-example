//
//  NetworkController.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import Foundation

protocol NetworkControllerConforming {
    func fetchCountries() async throws -> [Country]
}

class NetworkController: NetworkControllerConforming {
    
    let decoder = JSONDecoder()
    
    func fetchCountries() async throws -> [Country] {
        let urlString = "https://gist.githubusercontent.com/peymano-wmt/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json"
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let result = try decoder.decode([Country].self, from: data)
        return result
    }
}
