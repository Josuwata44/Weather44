//
//  CMWeather44App.swift
//  CMWeather44
//
//  Created by cmStudent on 2023/01/16.
//

import SwiftUI

@main
struct CMWeather44App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: WeatherViewModel())
            
        }
    }
}
