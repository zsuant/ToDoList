//
//  ComposeView.swift
//  ToDoList
//
//  Created by 이수겸 on 2023/02/07.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var store: ToDoStore
    
    var toDo: ToDo? = nil
    
    @Environment(\.dismiss) var dismiss
    
    @State private var content: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $content)
                    .padding()
                    .onAppear {
                        if let toDo = toDo {
                            content = toDo.content
                        }
                    }
            }
            .navigationTitle(toDo != nil ? "메모 편집" : "새 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("취소")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        if let toDo = toDo {
                            store.update(toDo: toDo, content: content)
                        } else {
                            store.insert(toDoText: content)
                        }
                        store.insert(toDoText: content)
                        dismiss()
                    } label: {
                        Text("저장")
                    }
                }
            }
        }
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(ToDoStore())
    }
}
