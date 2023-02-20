//
//  CountryDemoApp.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import SwiftUI

@main
struct CountryDemoApp: App {
    
    let app = ApplicationController()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: app.viewModel)
        }
    }
}
