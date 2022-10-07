//
//  UnitMesurementApp.swift
//  UnitMesurement
//
//  Created by Pau Ribot Pujolras on 30/9/22.
//

import SwiftUI

@main
struct UnitMesurementApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MenuView()
                    .navigationTitle("Unit Converter")
            }
        }
    }
}
