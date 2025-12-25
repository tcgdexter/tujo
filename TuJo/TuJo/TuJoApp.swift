//
//  TuJoApp.swift
//  TuJo
//
//  Created by christian on 12/24/25.
//

import SwiftUI
import SwiftData

@main
struct TuJoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Match.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
