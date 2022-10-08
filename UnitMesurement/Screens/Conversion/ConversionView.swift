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
            
            VStack (spacing: 50){
                HStack {
                    
                    DropDownView(selectedUnit: $viewModel.selectedFirstUnit, dictionary: viewModel.unit.getNestedCases())
                    
                    
                    Button {
                        viewModel.swapValues()
                    } label: {
                        Image("exchange")
                            .resizable()
                            .scaledToFit()
                            .frame(height:45)
                    }
                    
                    DropDownView(selectedUnit: $viewModel.selectedSecondUnit, dictionary: viewModel.unit.getNestedCases())
                    
                }
                .padding(.top)
                .padding(.horizontal)
                
                
                ConversionTextFieldView(textFieldUnit: $viewModel.firstTextFieldValue, textFieldText: viewModel.selectedFirstUnit)
                
                ConversionTextFieldView(textFieldUnit: $viewModel.secondTextFieldValue, textFieldText: viewModel.selectedSecondUnit)
                
                if (!viewModel.firstTextFieldValue.isEmpty && !viewModel.secondTextFieldValue.isEmpty) {
                    Text("\(viewModel.firstTextFieldValue) \(viewModel.selectedFirstUnit) is equal to \(viewModel.secondTextFieldValue) \(viewModel.selectedSecondUnit)")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                }
                
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
