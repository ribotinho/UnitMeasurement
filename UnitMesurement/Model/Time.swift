//
//  Time.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Time : Double, CaseIterable, Dictionarable{
    case hours = 1
    case minutes = 60
    case seconds = 3600
    case hearbeat = 3500
    case pluto = 0.00000046
    case despacito = 16
    case soccer = 0.75
    
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
            return "💓 heartbeat"
        case .pluto:
            return "🪐 pluto"
        case .despacito:
            return "🎹 Despacito"
        case .soccer:
            return "⚽️ game"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "seconds" || name == "hours" || name == "minutes"
        
    }
}

