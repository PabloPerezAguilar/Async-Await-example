//
//  ViewController.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var countries = [Country]()
    
    let network: NetworkControllerConforming
    init(network: NetworkControllerConforming) {
        self.network = network
        
        Task {
            do {
                try await fetchCountries()
            } catch let error {
                print("error: \(error)")
            }
        }
    }
    
    func fetchCountries() async throws {
        let _countries = try await network.fetchCountries()
        await MainActor.run {
            self.countries = _countries
        }
        
    }
    
}
