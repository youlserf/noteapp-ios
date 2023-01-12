//
//  TaskListViewModel.swift
//  ToDoList
//
//  Created by youlserf on 12/01/23.
//

import Foundation

final class TaskListViewModel: ObservableObject{
    
    @Published var toDoItems = [TaskModel]()
    
    @Published var toDoStack:  [TaskModel] =  [ ]
    
    
    func toggleItemCompletion(_ item: TaskModel) {
        if let index = toDoItems.firstIndex(where: { $0.id == item.id }) {
            toDoItems[index].isCompleted.toggle()
        }
    }
    
    func deleteItem(at indexSet: IndexSet) {
        toDoItems.remove(atOffsets: indexSet)
    }
    
    func addItem() {
        toDoItems.append(TaskModel(name: "New Item", detail: "", isCompleted: false))
    }
}
