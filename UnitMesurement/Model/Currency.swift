//
//  Currency+.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation


enum Currency : Double, CaseIterable, Dictionarable {
    
    case euro = 1
    case beer = 1.5
    case domPerignon = 0.0007
    case caviar = 0.02
    case iphone = 0.0013
    case dolar = 0.97
    
    var displayName : String {
        switch self{
        case .euro:
            return "Euro €"
        case .beer:
            return "🍻 beer"
        case .domPerignon:
            return "🍾 Pérignon"
        case .caviar:
            return "🐟 Caviar "
        case .iphone:
            return "📱 iPhone "
        case .dolar:
            return "Dollar 💲"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "Euro €" || name == "Dollar 💲"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Currency.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}


