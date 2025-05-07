//
//  ContentView.swift
//  To Do List
//
//  Created by Jessica Cooper on 5/4/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
            
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                }
                
                label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
            List {
                ForEach(toDos) {
                    toDoItem in
                    Text("\(toDoItem.isImportant ? "‼️ " : "")\(toDoItem.title)")
                }
            }
            .listStyle(.plain)
        }
    if showNewTask {
        NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
