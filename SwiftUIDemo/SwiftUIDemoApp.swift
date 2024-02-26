//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Jiaolong on 2024/2/26.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
