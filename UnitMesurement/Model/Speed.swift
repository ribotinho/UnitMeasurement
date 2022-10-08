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
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Speed.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
    
    var displayName : String {
        switch self{
            
        case .kmh:
            return "km/h"
        case .phelphs:
            return "🏊‍♀️ Phelps"
        case .f1:
            return "🏎 f1 car"
        case .light:
            return "💡 light speed"
        case .usain:
            return "🏃🏿 Usain Bolt"
        }
    }
}


