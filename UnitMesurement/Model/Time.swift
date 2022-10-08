//
//  Time.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Time : Double, CaseIterable, Dictionarable{
    case hours = 1.0
    case minutes = 60
    case seconds = 3600
    case hearbeat = 3500
    case pluto = 0.00000046
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Time.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
    
    var displayName : String {
        switch self{
            
        case .hours:
            return "hours"
        case .minutes:
            return "minutes"
        case .seconds:
            return "seconds"
        case .hearbeat:
            return "💓 heartbeats"
        case .pluto:
            return "🪐 pluto"
        }
    }
}

