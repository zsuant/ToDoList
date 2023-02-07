//
//  ToDo.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import Foundation
import SwiftUI

class ToDo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let toDoDate: Date
    
    init(content: String, toDoDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.toDoDate = toDoDate
    }
}
