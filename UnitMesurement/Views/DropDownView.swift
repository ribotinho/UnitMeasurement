//
//  DropDownView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

enum DropDownStyle {
    case base, weird
}

struct DropDownView: View {
    
    @ObservedObject var viewModel : ConversionViewModel
    @Binding var selectedUnit : String
    var dictionary : [String : Double]
    var style : DropDownStyle
    
    var body: some View {
        ZStack (alignment: .trailing) {
            Color(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Picker("Strength", selection: $selectedUnit) {
                ForEach(dictionary.sorted(by: >), id: \.key) { key, value in
                    switch style {
                    case .base:
                        if viewModel.unit.base(name: key) { Text("\(key)").tag(key) }
                    case .weird:
                        if !viewModel.unit.base(name: key) { Text("\(key)").tag(key) }
                    }
                    
                }
            }
            .accentColor(.black)
            .onChange(of: selectedUnit) { _ in
                viewModel.calculate()
            }
        }
        .frame(height: 45)

    }
}

struct DropDownView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownView(viewModel: ConversionViewModel(unit: .temperature), selectedUnit: .constant("Weight"), dictionary: Currency.toDictionary(), style: .base)
    }
}
