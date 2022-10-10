//
//  Speed.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation


enum Speed : Double, CaseIterable, Dictionarable{
    case kmh = 1
    case phelphs = 0.143
    case f1 = 0.0031
    case light = 0.000000000926
    case usain = 0.027
    case mph = 0.621371
    case cheetah = 0.01
    case bullet = 0.00073
    
    var displayName : String {
        switch self{
        case .kmh:
            return "km/h"
        case .phelphs:
            return "🏊‍♀️ Phelps"
        case .f1:
            return "🏎 f1 car"
        case .light:
            return "💡 speed"
        case .usain:
            return "🏃🏿 Usain Bolt"
        case .mph:
            return "mp/h"
        case .cheetah:
            return "🐅 cheetah"
        case .bullet:
            return "🔫 bullet"
        }
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Speed.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
    
    static func isBase(name : String) -> Bool {
        return name == "km/h" || name == "mp/h"
        
    }
}


