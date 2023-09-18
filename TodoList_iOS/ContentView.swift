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
            
            Button(action: {
                toDoList.addTask(newTask)
                newTask = ""
                }) {
                    Text("Add Task")
                        .foregroundColor(Color.black)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.9882352941, green: 0.6196078431, blue: 0.06274509804, alpha: 1)))
                        .cornerRadius(10)
                        .padding()
                }
                .padding(.horizontal)
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
