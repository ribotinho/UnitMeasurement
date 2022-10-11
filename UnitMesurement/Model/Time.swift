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
    
    var displayName : String {
        switch self{
            
        case .hours:
            return "time.hours"
        case .minutes:
            return "time.minutes"
        case .seconds:
            return "time.seconds"
        case .hearbeat:
            return "time.heartbeat"
        case .pluto:
            return "time.pluto"
        case .despacito:
            return "time.despacito"
        case .soccer:
            return "time.soccer"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "time.seconds" || name == "time.hours" || name == "time.minutes"
        
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Time.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}

