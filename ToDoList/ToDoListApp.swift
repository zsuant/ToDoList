//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var store = ToDoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
