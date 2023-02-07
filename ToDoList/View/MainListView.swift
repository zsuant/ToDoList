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
                ToDoCell(toDo: toDo)
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


