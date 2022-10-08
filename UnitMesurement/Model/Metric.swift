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
    
    static func toDictionary() -> [String : Double] {
        
        var dictionary : [String : Double] = [:]
        
        for item in Metric.allCases {
            dictionary["\(item.displayName)"] = item.rawValue
        }
        
        return dictionary
    }
    
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
            return "🏟 football fields"
        }
    }
    
}



