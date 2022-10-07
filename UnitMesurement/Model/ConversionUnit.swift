
import Foundation
import UIKit

enum ConversionUnit : CaseIterable, Hashable {
    
    
    static var allCases: [ConversionUnit] {
        return [.metric(type: .metres), .currency(type: .euro), .weight(type: .kilogram), .speed(type: .kmh), .time(type: .hours), .temperature(type: .degree)]
    }
    
    
    case metric(type: Metric)
    case currency(type: Currency)
    case weight(type: Weight)
    case speed(type: Speed)
    case time(type: Time)
    case temperature(type: Temperature)
    
    
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
    
    /*func getNestedCases() -> Collection where Self.AllCases.Element {
        switch self{
        case .metric:
            return ConversionUnit.Metric.allCases
        case .currency:
            return ConversionUnit.Currency.allCases
        case .weight:
            return ConversionUnit.Weight.allCases
        case .speed:
            return ConversionUnit.Speed.allCases
        case .time:
            return ConversionUnit.Time.allCases
        case .temperature:
            return ConversionUnit.Temperature.allCases
        }
    }*/
    
    enum Metric : Double, CaseIterable {
        case metres = 1
        case kilometres = 1000
        case baguette = 1.54
        case titanic = 0.037
        case footballField = 0.0091
    }

    enum Currency : Double, CaseIterable {
        case euro = 1
        case beer = 1.5
        case domPerignon = 0.0007
        case caviar = 0.02
        case iphone = 0.0013
        
        var displayName : String {
            switch self{
            case .euro:
                return "Euro €"
            case .beer:
                return "🍻 beer"
            case .domPerignon:
                return "🍾 Pérignon"
            case .caviar:
                return "🐟 Caviar "
            case .iphone:
                return "📱 iPhone "
            }
        }
    }

    enum Temperature : Double, CaseIterable {
        case degree = 1.0
        case icecream = 1.07
        case hotTub = 0.88
        case lava = 0.183
        case sauna = 0.78
        
        var displayName : String {
            switch self{
                
            case .degree:
                return "Celsius"
            case .icecream:
                return "🍦 icecream"
            case .hotTub:
                return "🛁 jacuzzi"
            case .lava:
                return "🔥 lava"
            case .sauna:
                return "🧖‍♀️ sauna"
            }
        }
    }

    enum Time : Double, CaseIterable{
        case hours = 1.0
        case minutes = 60
        case seconds = 3600
        case hearbeat = 3500
        case pluto = 0.00000046
        
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

    enum Speed : Double, CaseIterable{
        case kmh = 1
        case phelphs = 0.143
        case f1 = 0.0031
        case light = 0.000000000926
        case usain = 0.027
        
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

    enum Weight : Double, CaseIterable{
        case gram = 1000
        case kilogram = 1
        case bee = 9.091
        case bigMac = 4.5
        case cat = 0.22
        
        var displayName : String {
            switch self{
                
            case .gram:
                return "grams"
            case .kilogram:
                return "kilograms"
            case .bee:
                return "🐝 bees"
            case .bigMac:
                return "🍔 Big Macs"
            case .cat:
                return "🐈 cats"
            }
        }
        
    }
}





