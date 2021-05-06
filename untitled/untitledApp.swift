//
//  untitledApp.swift
//  untitled
//
//  Created by Artem on 06.05.2021.
//

import SwiftUI

@main
struct untitledApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
