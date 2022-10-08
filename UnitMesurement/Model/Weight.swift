//
//  Weight.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Weight : Double, CaseIterable, Dictionarable{
    case gram = 1000
    case kilogram = 1
    case bee = 9.091
    case bigMac = 4.5
    case cat = 0.22
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Weight.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
    
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
        }
    }
    
}

