//
//  MenuView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

struct MenuView: View {
    
    let columns : [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ZStack{
            
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(ConversionUnit.allCases, id: \.self) { item in
                    NavigationLink(destination: ConversionView(viewModel: ConversionViewModel(unit: item))) {
                        MenuItemView(title: item.name)
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
