//
//  ConversionTextFieldView.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 8/10/22.
//

import SwiftUI

struct ConversionTextFieldView: View {
    
    @Binding var textFieldUnit : String
    var textFieldText : String
    var isDisabled : Bool
    
    var body: some View {
        HStack{
            
            TextField("", text: $textFieldUnit)
                .font(.system(size: 50, weight: .semibold, design: .rounded))
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .textFieldStyle(.plain)
                .submitLabel(.go)                
                .disabled(isDisabled)
                
            
            Text(textFieldText.localizedKey())
                .bold()
                .font(.title2)
                .padding(.trailing)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Colors.brandPrimary, lineWidth: 2)
        )
        .padding(.horizontal)
    }
}

struct ConversionTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ConversionTextFieldView(textFieldUnit: .constant(""), textFieldText: "Kilometres", isDisabled: false)
    }
}
