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
        didSet { calculate(textfield: "first") }
    }
    
    @Published var secondTextFieldValue : String = "" {
        didSet { calculate(textfield: "second") }
    }
    
    @Published var selectedFirstUnit : String = ""
    @Published var selectedSecondUnit : String = ""
    
    
    init(unit : ConversionUnit){
        self.unit = unit
    }
    
    func swapValues(){
        let tempString = selectedFirstUnit
        selectedFirstUnit = selectedSecondUnit
        selectedSecondUnit = tempString
        
        let temp = firstTextFieldValue
        firstTextFieldValue = secondTextFieldValue
        secondTextFieldValue = temp
    }
    
    func reset(){
        firstTextFieldValue = ""
        secondTextFieldValue = ""
    }
    
    func setup(){
        let dictionary = unit.getNestedCases().sorted(by: >)
        selectedFirstUnit = dictionary.first(where: {$0.key == unit.base})!.key
        selectedSecondUnit = dictionary.first(where: {$0.key != unit.base})!.key
    }
    
    func calculate(textfield : String) {
        
        let dictionary = unit.getNestedCases()
        
        guard let firstUnitValue = dictionary[selectedFirstUnit], let secondUnitValue = dictionary[selectedSecondUnit] else { return }
        
        
        
        
        if textfield == "first" {
            if let firstValue = Double(firstTextFieldValue) {
                if selectedFirstUnit == unit.base {
                    secondTextFieldValue = String(firstValue * secondUnitValue)
                }else if selectedSecondUnit == unit.base {
                    secondTextFieldValue = String(firstValue / secondUnitValue)
                }else{
                    
                }
            }
        }else {
            if let secondValue = Double(secondTextFieldValue) {
                if selectedSecondUnit == unit.base {
                    firstTextFieldValue = String(secondValue * firstUnitValue)
                }else if selectedFirstUnit == unit.base {
                    
                }else{
                    
                }
            }
        }
    }
}
