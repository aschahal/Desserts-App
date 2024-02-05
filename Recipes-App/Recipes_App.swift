//
//  Recipes_App.swift
//  Recipes-App
//
//  Created by Patron on 2/3/24.
//

import SwiftUI

@main
struct Recipes_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DessertManager())
        }
    }
}
