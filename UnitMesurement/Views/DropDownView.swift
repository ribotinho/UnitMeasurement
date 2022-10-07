//
//  DropDownView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

struct DropDownView: View {
    
    @Binding var selectedUnit : ConversionUnit.Currency
    
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
                        ForEach(ConversionUnit.Currency.allCases, id: \.self) {
                            Text($0.displayName).tag($0)
                                .foregroundColor(.black)
                                .border(Color.red)
                        }
                    }
                    .labelsHidden()
                    .frame(maxWidth: 75)
                    .onChange(of: selectedUnit) { newValue in
                        print(newValue.displayName)
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
