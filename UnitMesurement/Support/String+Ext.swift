//
//  String+Ext.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 11/10/22.
//

import SwiftUI

extension String {
    
    func localizedKey() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
    
}
