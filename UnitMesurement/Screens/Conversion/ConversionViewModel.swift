//
//  ConversionViewModel.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

class ConversionViewModel : ObservableObject {
    
    var unit : ConversionUnit
    
    @Published var firstTextFieldValue : String = "" { didSet { calculate() } }
    @Published var secondTextFieldValue : String = ""
    @Published var selectedFirstUnit : String = ""
    @Published var selectedSecondUnit : String = ""
    
    
    init(unit : ConversionUnit){
        self.unit = unit
    }
    
    func swapValues(){
        let tempString = selectedFirstUnit
        selectedFirstUnit = selectedSecondUnit
        selectedSecondUnit = tempString
        
        let tempValue = firstTextFieldValue
        firstTextFieldValue = secondTextFieldValue
        secondTextFieldValue = tempValue
    }
    
    func reset(){
        firstTextFieldValue = ""
        secondTextFieldValue = ""
    }
    
    func setup(){
        let dictionary = unit.getNestedCases().sorted(by: >)
        selectedFirstUnit = dictionary.first(where: { unit.base(name: $0.key) })!.key
        selectedSecondUnit = dictionary.first(where: { !unit.base(name: $0.key) })!.key
    }
    
    func calculate() {
        
        let dictionary = unit.getNestedCases()
        guard let firstUnitValue = dictionary[selectedFirstUnit], let secondUnitValue = dictionary[selectedSecondUnit] else { return }
        
        
        if let firstValue = Double(firstTextFieldValue) {
            
            let temp = firstValue / firstUnitValue
            let result = temp * secondUnitValue
            secondTextFieldValue = result > 1 ? String(format: "%.2f", result) : String(format: "%.4f", result)
            
        }else{
            secondTextFieldValue = ""
        }
        
    }
}
