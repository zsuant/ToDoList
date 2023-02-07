//
//  DetailView.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var toDo: ToDo
    
    @EnvironmentObject var store: ToDoStore
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(toDo.content)
                            .padding()
                        
                        Spacer(minLength: 0)
                    }
                        
                    Text(toDo.toDoDate, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(toDo: ToDo(content: "Hello"))
            .environmentObject(ToDoStore())
    }
}
