//
//  Dictionarable.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 7/10/22.
//

import Foundation

protocol Dictionarable {
    static func toDictionary() -> [String : Double]
}
