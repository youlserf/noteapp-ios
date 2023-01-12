//
//  ToDoListRow.swift
//  ToDoList
//
//  Created by youlserf on 8/01/23.

import SwiftUI

struct RowView: View {
    
    var task: TaskModel?
    var toggleItemCompletion: (TaskModel) -> ()?
    
    var body: some View {
        HStack {
            Text(task!.name)
                .strikethrough(task!.isCompleted)
            Spacer()
            Button(action: {
                self.toggleItemCompletion(task!)
            }){
                Image(systemName: task!.isCompleted ? "checkmark.square" : "square")
            }.buttonStyle(PlainButtonStyle())
            
            Image(systemName: "square.and.pencil")
        }
    }
}

