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
            return "metric.metres"
        case .kilometres:
            return "metric.kilometres"
        case .baguette:
            return "metric.baguette"
        case .titanic:
            return "metric.titanic"
        case .footballField:
            return "metric.field"
        case .decimetres:
            return "metric.decimetres"
        case .centimetres:
            return "metric.centimetres"
        case .milimetres:
            return "metric.milimetres"
        case .inches:
            return "metric.inches"
        case .feet:
            return "metric.feet"
        case .chocobar:
            return "metric.chocobar"
        }
    }
    
    static func isBase(name : String) -> Bool {
        return name == "metric.metres" || name == "metric.kilometres" || name == "metric.decimetres" || name == "metric.centimetres" || name == "metric.milimetres" || name == "metric.feet" || name == "metric.inches"
    }
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Metric.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
}



