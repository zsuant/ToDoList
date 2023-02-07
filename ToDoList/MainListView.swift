//
//  MainListView.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

struct MainListView: View {
    
    @EnvironmentObject var store: ToDoStore
    
    var body: some View {
        NavigationView {
            List(store.toDoList) { toDo in
                VStack(alignment: .leading) {
                    Text(toDo.content)
                        .font(.body)
                        .lineLimit(1)
                    Text(toDo.toDoDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("ToDoList")
            .listStyle(.plain)

        }
       
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(ToDoStore())
    }
}
