//
//  Weight.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Weight : Double, CaseIterable, Dictionarable{
    case gram = 1
    case lbs = 0.00220462
    case kilogram = 1000
    case bee = 9.091
    case bigMac = 4.5
    case cat = 0.22
    case bear = 0.0000022
    
    var displayName : String {
        switch self{
            
        case .gram:
            return "grams"
        case .kilogram:
            return "kilograms"
        case .bee:
            return "🐝 bees"
        case .bigMac:
            return "🍔 Big Macs"
        case .cat:
            return "🐈 cats"
        case .lbs:
            return "lbs"
        case .bear:
            return "🐻‍❄️ polar bear"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "grams" || name == "kilograms" || name == "lbs"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Weight.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}

