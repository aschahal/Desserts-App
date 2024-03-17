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
