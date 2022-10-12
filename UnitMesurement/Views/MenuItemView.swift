//
//  MenuItemView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

struct MenuItemView: View {
    
    var title : String
    var imageName : String
    
    var body: some View {
        ZStack {
            Color(.white)
                .frame(height: 175)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                Text(title.localizedKey())
                    .bold()
                    .font(.title)
                    .foregroundColor(Colors.brandPrimary)
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(title: "unit.weight", imageName: "Weight")
    }
}
