//
//  CountryCell.swift
//  CountryDemo
//
//  Created by Consultant on 12/23/22.
//

import SwiftUI

struct CountryCell: View {
    let country: Country
    var body: some View {
        HStack {
            HStack {
                HStack {
                    HStack {
                        Text(country.name)
                            .font(.title2)
                            
                        Spacer()
                        Text(country.code)
                            .font(.title2)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    
                }
                .background(RoundedRectangle(cornerRadius: 12.0).fill().foregroundColor(.blue))
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 6)
        }
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: Country.preview())
    }
}
