//
//  ToDoStore.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import Foundation

class ToDoStore: ObservableObject {
    @Published var toDoList: [ToDo]
    
    init() {
        toDoList = [
            ToDo(content: "Hello", toDoDate: Date.now),
            ToDo(content: "Hi", toDoDate: Date.now.addingTimeInterval(3600 * 24))
        ]
    }
    
    func insert(toDoText: String) {
        toDoList.insert(ToDo(content: toDoText,toDoDate: Date.now), at: 0)
    }
    
    func update(toDo: ToDo?, content: String) {
        guard let toDo = toDo else {
            return
        }
        toDo.content = content
    }
    
    func delete(toDo: ToDo) {
        toDoList.removeAll { $0.id == toDo.id}
    }
    func delete(set: IndexSet) {
        for index in set {
            toDoList.remove(at: index)
        }
    }
}
