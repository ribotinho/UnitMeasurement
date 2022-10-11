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
            return "speed.kmh"
        case .phelphs:
            return "speed.phelps"
        case .f1:
            return "speed.f1"
        case .light:
            return "speed.light"
        case .usain:
            return "speed.usain"
        case .mph:
            return "speed.mph"
        case .cheetah:
            return "speed.cheetah"
        case .bullet:
            return "speed.bullet"
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
        return name == "speed.kmh" || name == "speed.mph"
    }
}


