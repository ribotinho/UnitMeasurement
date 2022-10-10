
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
    
    func base(name : String) -> Bool {
        switch self {
        case .metric:
            return Metric.isBase(name: name)
        case .currency:
            return Currency.isBase(name: name)
        case .weight:
            return Weight.isBase(name: name)
        case .speed:
            return Speed.isBase(name: name)
        case .time:
            return Time.isBase(name: name)
        case .temperature:
            return Temperature.isBase(name: name)
        }
    }
    
}






