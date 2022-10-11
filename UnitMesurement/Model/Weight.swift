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
            return "weight.grams"
        case .kilogram:
            return "weight.kilograms"
        case .bee:
            return "weight.bee"
        case .bigMac:
            return "weight.bigmac"
        case .cat:
            return "weight.cat"
        case .lbs:
            return "weight.lbs"
        case .bear:
            return "weight.bear"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "weight.grams" || name == "weight.kilograms" || name == "weight.lbs"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Weight.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}

