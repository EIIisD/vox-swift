//
//  voxApp.swift
//  vox
//
//  Created by iii on 29/02/2024.
//

import SwiftUI
import SwiftData

@main
struct voxApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var statusBarManager = StatusBarItemManager()

    var body: some Scene {
        // Removed WindowGroup to prepare for status bar item setup
    }
}
