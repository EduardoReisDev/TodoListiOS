//
//  TodoList_iOSTests.swift
//  TodoList_iOSTests
//
//  Created by Eduardo Reis on 17/09/23.
//

import XCTest

@testable import TodoList_iOS;

class MyClassTests: XCTestCase {

    var toDoList: TodoList!

    override func setUp() {
        super.setUp()
    toDoList = TodoList()
    }

    func testAddTask() {
        toDoList.addTask("Task 1")
        XCTAssertEqual(toDoList.tasks.count, 1)
        XCTAssertEqual(toDoList.tasks[0], "Task 1")
    }
    
    func testDeleteTask() {
        toDoList.addTask("Task 1")
        toDoList.deleteTask(at: IndexSet(integer: 0))
        XCTAssertEqual(toDoList.tasks.count, 0)
    }
    
    func testEditTask() {
        toDoList.addTask("Task 1")
        toDoList.editTask(at: 0, with: "Updated Task")
        XCTAssertEqual(toDoList.tasks[0], "Updated Task")
    }

    func testListTasks() {
        toDoList.addTask("Task 1")
        toDoList.addTask("Task 2")
        XCTAssertEqual(toDoList.listTasks(), ["Task 1", "Task 2"])
    }
}
