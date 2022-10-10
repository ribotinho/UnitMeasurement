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
            return "Celsius"
        case .icecream:
            return "🍦 icecream"
        case .hotTub:
            return "🛁 jacuzzi"
        case .lava:
            return "🔥 lava"
        case .sauna:
            return "🧖‍♀️ sauna"
        case .farenheit:
            return "Farenheit"
        case .sun:
            return "☀️ surface"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "Celsius" || name == "Farenheit"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Temperature.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}

