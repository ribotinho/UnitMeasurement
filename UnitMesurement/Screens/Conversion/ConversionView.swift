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
    @State private var selectedFirstUnit : ConversionUnit.Currency = .euro
    @State private var selectedSecondUnit : ConversionUnit.Currency = .beer
    
    
    
    var body: some View {
        ZStack{
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    DropDownView(selectedUnit: $selectedFirstUnit)
                    
                    
                    Button {
                        print("hola")
                    } label: {
                        Image("exchange")
                            .resizable()
                            .scaledToFit()
                            .frame(height:45)
                    }
                    
                    DropDownView(selectedUnit: $selectedSecondUnit)
                    
                }
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 50)
                
                
                HStack{
                    
                    TextField("", text: $viewModel.firstTextFieldValue)
                        .multilineTextAlignment(.trailing)
                        .frame(height: 100)
                        .textFieldStyle(.plain)
                        .keyboardType(.decimalPad)
                        
                    Text("\(selectedFirstUnit.displayName)")
                        .bold()
                        .font(.title2)
                        .padding(.trailing)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal)
                
                HStack{
                    
                    TextField("", text: $viewModel.secondTextFieldValue)
                        .multilineTextAlignment(.trailing)
                        .frame(height: 100)
                        .textFieldStyle(.plain)
                        .keyboardType(.decimalPad)
                        
                    Text("\(selectedSecondUnit.displayName)")
                        .bold()
                        .font(.title2)
                        .padding(.horizontal)
                        
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal)
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        .navigationTitle(viewModel.unit.name)
    }
    
}


struct ConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ConversionView(viewModel: ConversionViewModel(unit: ConversionUnit.temperature(type: .degree)))
            ConversionView(viewModel: ConversionViewModel(unit: ConversionUnit.temperature(type: .degree)))
                .preferredColorScheme(.dark)
        }
    }
}
