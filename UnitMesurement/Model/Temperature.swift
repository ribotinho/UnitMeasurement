//
//  Temperature.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Temperature : Double, CaseIterable, Dictionarable {
    case degree = 1.0
    case icecream = 1.07
    case hotTub = 0.88
    case lava = 0.183
    case sauna = 0.78
    case farenheit = 33.8
    case sun = 0.047
    
    var displayName : String {
        switch self{
            
        case .degree:
            return "temperature.celsius"
        case .icecream:
            return "temperature.icecream"
        case .hotTub:
            return "temperature.jacuzzi"
        case .lava:
            return "temperature.lava"
        case .sauna:
            return "temperature.sauna"
        case .farenheit:
            return "temperature.farenheit"
        case .sun:
            return "temperature.sun"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "temperature.celsius" || name == "temperature.farenheit"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Temperature.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}

