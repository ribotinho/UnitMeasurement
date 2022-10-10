//
//  ConversionViewModel.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

class ConversionViewModel : ObservableObject {
    
    var unit : ConversionUnit
    
    @Published var firstTextFieldValue : String = ""
    @Published var secondTextFieldValue : String = ""
    @Published var selectedFirstUnit : String = "" {
        didSet {
            calculate(textfield: "first")
        }
    }
    @Published var selectedSecondUnit : String = "" {
        didSet {
            calculate(textfield: "second")
        }
    }
    
    
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
        selectedFirstUnit = dictionary.first(where: {$0.key == unit.base})!.key
        selectedSecondUnit = dictionary.first(where: {$0.key != unit.base})!.key
    }
    
    func calculate(textfield : String) {
        
        let dictionary = unit.getNestedCases()
        guard let firstUnitValue = dictionary[selectedFirstUnit], let secondUnitValue = dictionary[selectedSecondUnit] else { return }
        
        if textfield == "first" {
            if let firstValue = Double(firstTextFieldValue) {
                if selectedFirstUnit == unit.base {
                    secondTextFieldValue = String(format: "%.2f", firstValue * secondUnitValue)
                }else if selectedSecondUnit == unit.base {
                    secondTextFieldValue = String(format: "%.2f", firstValue / firstUnitValue)
                }else{
                    let temp = firstValue / firstUnitValue
                    secondTextFieldValue = String(format: "%.2f", temp * secondUnitValue)
                }
            }
        }else {
            if let secondValue = Double(secondTextFieldValue) {
                if selectedSecondUnit == unit.base {
                    firstTextFieldValue = String(format: "%.2f", secondValue * firstUnitValue)
                }else if selectedFirstUnit == unit.base {
                    firstTextFieldValue = String(format: "%.2f", secondValue / secondUnitValue)
                }else{
                    let temp = secondValue / secondUnitValue
                    secondTextFieldValue = String(format: "%.2f", temp * firstUnitValue)
                }
            }
        }
    }
}
