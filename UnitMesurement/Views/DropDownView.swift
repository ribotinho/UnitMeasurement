//
//  DropDownView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

struct DropDownView: View {
    
    @Binding var selectedUnit : String
    var dictionary : [String : Double]
    
    
    var body: some View {
        HStack{
            
            ZStack {
                Color(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                    )
                
                HStack{
                    Picker("Strength", selection: $selectedUnit) {
                        ForEach(dictionary.sorted(by: >), id: \.key) { key, value in
                            Text("\(key)").tag(key)
                                .foregroundColor(.black)
                                .border(Color.red)
                        }
                    }
                    .labelsHidden()
                    .frame(maxWidth: 75)
                    .onChange(of: selectedUnit) { newValue in
                        print(newValue)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                }
                .padding([.leading, .trailing])
            }
        }
        .frame(height: 45)
    }
}
