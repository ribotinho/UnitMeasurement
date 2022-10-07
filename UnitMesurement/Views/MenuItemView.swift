//
//  MenuItemView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

struct MenuItemView: View {
    
    var title : String
    
    var body: some View {
        ZStack {
            Color(.white)
                .frame(width: 175, height: 175)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack{
                Image(title)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                Text(title)
                    .bold()
                    .font(.title)
            }
            
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(title: "Scale")
    }
}
