//
//  ToDoListRow.swift
//  ToDoList
//
//  Created by youlserf on 8/01/23.
//
/*
import SwiftUI

struct ToDoRow: View {
    var task: ToDoItem
    var toggleItemCompletion: (ToDoItem) -> ()
    
    @State var showDetail = false
    
    var body: some View {
        HStack {
            Group{
                Text(task.name)
                    .strikethrough(task.isCompleted)
                Spacer()
                Image(systemName: task.isCompleted ? "checkmark.square" : "square")
            }.onTapGesture {
                self.toggleItemCompletion(task)
            }
    
            NavigationLink {
                ToDoDetailView(toDoItem: task)
            } label: {
                Image(systemName: "pencil")
            }
            
            Button(action: {
                self.showDetail.toggle()
            }) {
                Image(systemName: "pencil")
            }
                .buttonStyle(PlainButtonStyle())
                .sheet(isPresented: $showDetail) {
                    ToDoDetailView(toDoItem: task)
                }
        }
    }
}

*/
