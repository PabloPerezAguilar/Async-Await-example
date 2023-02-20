//
//  ContentView.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        VStack {
            List(viewModel.countries) { country in
                CountryCell(country: country)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init(network: NetworkController()))
    }
}
