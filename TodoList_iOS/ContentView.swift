//
//  ContentView.swift
//  TodoList_iOS
//
//  Created by Eduardo Reis on 17/09/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var toDoList = TodoList()

    @State private var newTask = ""

    var body: some View {
        VStack {
            TextField("New Task", text: $newTask)
                .padding()
            Button("Add Task") {
                toDoList.addTask(newTask)
                newTask = ""
            }
            List {
                ForEach(toDoList.tasks, id: \.self) { task in
                    Text(task)
                }
                .onDelete(perform: toDoList.deleteTask)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
