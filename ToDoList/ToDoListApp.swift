//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

@main
struct ToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
