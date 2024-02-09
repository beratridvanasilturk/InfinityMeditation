//
//  CalmApp.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

import SwiftUI

@main
struct CalmApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = true
    var body: some Scene {
        WindowGroup {
            TabView{
                MainView()
                    .tabItem {
                        Image("infinity")
                        Text("Main")
                    }
                ChakrasView()
                    .tabItem {
                        Image("chakras")
                        Text("Chakras")
                    }
            }
            .accentColor(Color.purple)
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
