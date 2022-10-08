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
        NavigationView {
            ZStack{
                
                Color(.secondarySystemBackground)
                    .ignoresSafeArea()
                
                VStack {
                    HStack{
                        Text("Unit conversion")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                        Spacer()
                    }
                    .padding(.leading)
                    
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(ConversionUnit.allCases, id: \.self) { item in
                            NavigationLink(destination: ConversionView(viewModel: ConversionViewModel(unit: item))) {
                                MenuItemView(title: item.name)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
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
