
import Foundation
import UIKit

enum ConversionUnit : CaseIterable, Hashable {
    
    
    
    case metric
    case currency
    case weight
    case speed
    case time
    case temperature
    
    
    var name : String {
        switch self {
         case .metric:
            return "Metric"
        case .currency:
            return "Currency"
        case .weight:
            return "Weight"
        case .speed:
            return "Speed"
        case .time:
            return "Time"
        case .temperature:
            return "Temperature"
        }
    }
    
    func getNestedCases() -> [String : Double] {
        switch self{
        case .metric:
            return Metric.toDictionary()
        case .currency:
            return Currency.toDictionary()
        case .weight:
            return Weight.toDictionary()
        case .speed:
            return Speed.toDictionary()
        case .time:
            return Time.toDictionary()
        case .temperature:
            return Temperature.toDictionary()
        }
    }
    
    var base : String {
        switch self {
        case .metric:
            return "metres"
        case .currency:
            return "Euro €"
        case .weight:
            return "kilograms"
        case .speed:
            return "km/h"
        case .time:
            return "hours"
        case .temperature:
            return "Celsius"
        }
    }
    
}






