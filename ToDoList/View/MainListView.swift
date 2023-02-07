//
//  MainListView.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

struct MainListView: View {
    
    @EnvironmentObject var store: ToDoStore
    
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.toDoList) { toDo in
                NavigationLink {
                    DetailView(toDo: toDo)
                } label: {
                    ToDoCell(toDo: toDo)
                }
            }
            .navigationTitle("ToDoList")
            .listStyle(.plain)
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
                    
            }
                
            

        }
       
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(ToDoStore())
    }
}


