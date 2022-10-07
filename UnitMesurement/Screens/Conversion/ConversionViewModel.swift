//
//  ConversionViewModel.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

class ConversionViewModel : ObservableObject {
    
    var unit : ConversionUnit
    
    @Published var firstTextFieldValue : String = "" {
        didSet { print(firstTextFieldValue) }
    }
    
    @Published var secondTextFieldValue : String = "" {
        didSet { print(firstTextFieldValue) }
    }
    
    init(unit : ConversionUnit){
        self.unit = unit
    }
}
