//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Jessica Cooper on 5/4/25.
//

import SwiftUI
import SwiftData

@main
struct To_Do_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
