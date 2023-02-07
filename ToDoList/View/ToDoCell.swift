//
//  ToDoCell.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

struct ToDoCell: View {
    @ObservedObject var toDo: ToDo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(toDo.content)
                .font(.body)
                .lineLimit(1)
            Text(toDo.toDoDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct ToDoCell_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCell(toDo: ToDo(content: "Test"))
    }
}
