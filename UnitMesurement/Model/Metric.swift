//
//  Metric.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

enum Metric : Double, CaseIterable, Dictionarable {
    case metres = 1
    case kilometres = 1000
    case baguette = 1.54
    case titanic = 0.037
    case footballField = 0.0091
    case decimetres = 0.1
    case centimetres = 0.01
    case milimetres = 0.001
    case inches = 39.3701
    case feet = 3.28084
    case chocobar = 7.3
    
    var displayName : String {
        switch self{
        case .metres:
            return "metres"
        case .kilometres:
            return "kilometres"
        case .baguette:
            return "🥖 baguettes"
        case .titanic:
            return "⛴ titanics"
        case .footballField:
            return "🏟 fields"
        case .decimetres:
            return "decimetres"
        case .centimetres:
            return "centimetres"
        case .milimetres:
            return "milimetres"
        case .inches:
            return "inches"
        case .feet:
            return "feet"
        case .chocobar:
            return "🍫 chocobar"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "metres" || name == "kilometres" || name == "decimetres" || name == "centimetres" || name == "milimetres" || name == "feet" || name == "inches"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Metric.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}



