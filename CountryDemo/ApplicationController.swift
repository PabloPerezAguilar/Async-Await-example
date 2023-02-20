//
//  ApplicationController.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import Foundation

class ApplicationController {
    
    let network = NetworkController()
    
    lazy var viewModel: ViewModel = {
        ViewModel(network: network)
    }()
    
}
