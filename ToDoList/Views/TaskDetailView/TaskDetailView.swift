//
//  TaskDetailView.swift
//  ToDoList
//
//  Created by youlserf on 7/01/23.
//

import SwiftUI

struct TaskDetailView: View {
    
    @State var toDoItem: TaskModel
    @Binding var toDoItems:  [TaskModel]
    @Binding var toDoStack:  [TaskModel]
    
    var body: some View {
        VStack {
            TextField("Title", text: $toDoItem.name)
                .font(.title2)
            Divider()
            TextEditor(text: $toDoItem.detail)
        }
        .offset(y:10)
        .navigationTitle("Detalle")
        .navigationBarTitleDisplayMode(.inline)
        
        Button (action: {
            print($toDoStack)
            updateItem(toDoItem)
            toDoStack.removeLast()
        })
        {
            Text("Save")
        }
    }
    
    func updateItem(_ item: TaskModel) {
        if let index = toDoItems.firstIndex(where: {
            $0.id == item.id
        }){
            toDoItems [index] = item
        }
    }
}

