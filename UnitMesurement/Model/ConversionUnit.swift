
import Foundation
import UIKit

enum ConversionUnit : CaseIterable, Hashable {
    
    case metric
    case currency
    case weight
    case speed
    case time
    case temperature
    
    
    var imageName : String {
        switch self {
         case .metric:
            return Images.metric
        case .currency:
            return Images.currency
        case .weight:
            return Images.weight
        case .speed:
            return Images.speed
        case .time:
            return Images.time
        case .temperature:
            return Images.temperature
        }
    }
    
    var title : String {
        switch self {
         case .metric:
            return "unit.metric"
        case .currency:
            return "unit.currency"
        case .weight:
            return "unit.weight"
        case .speed:
            return "unit.speed"
        case .time:
            return "unit.time"
        case .temperature:
            return "unit.temperature"
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






