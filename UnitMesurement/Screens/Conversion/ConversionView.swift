//
//  ConversionView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

//https://www.omnicalculator.com/conversion/weird-units

struct ConversionView: View {
    
    @ObservedObject var viewModel : ConversionViewModel
    
    
    var body: some View {
        ZStack{
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            
            VStack (spacing: 25){
                HStack {
                    
                    DropDownView(viewModel: viewModel, selectedUnit: $viewModel.selectedFirstUnit, dictionary: viewModel.unit.getNestedCases(), style: .base)
                    
                    Image("exchange")
                        .resizable()
                        .scaledToFit()
                        .frame(height:45)
                    
                    
                    DropDownView(viewModel: viewModel, selectedUnit: $viewModel.selectedSecondUnit, dictionary: viewModel.unit.getNestedCases(), style: .weird)
                    
                }
                .padding(.top)
                .padding(.horizontal)
                
                
                ConversionTextFieldView(textFieldUnit: $viewModel.firstTextFieldValue, textFieldText: viewModel.selectedFirstUnit, isDisabled: false)
                
                ConversionTextFieldView(textFieldUnit: $viewModel.secondTextFieldValue, textFieldText: viewModel.selectedSecondUnit, isDisabled: true)
                
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        .navigationTitle(viewModel.unit.name)
        .onAppear{
            viewModel.setup()
        }
        .onDisappear{
            viewModel.reset()
        }
    }
    
}


struct ConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ConversionView(viewModel: ConversionViewModel(unit: ConversionUnit.temperature))
            ConversionView(viewModel: ConversionViewModel(unit: ConversionUnit.temperature))
                .preferredColorScheme(.dark)
        }
    }
}
