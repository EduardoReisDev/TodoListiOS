//
//  TodoList.swift
//  TodoList_iOS
//
//  Created by Eduardo Reis on 17/09/23.
//

import Foundation

class TodoList: ObservableObject {
    var tasks: [String] = []

    func addTask(_ task: String) {
        tasks.append(task)
    }

    func deleteTask(at indices: IndexSet) {
        tasks.remove(atOffsets: indices)
    }

    func editTask(at index: Int, with newTask: String) {
        tasks[index] = newTask
    }

    func listTasks() -> [String] {
        return tasks
    }
}
