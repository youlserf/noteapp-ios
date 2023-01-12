//
//  List.swift
//  ToDoList
//
//  Created by youlserf on 7/01/23.
//

import SwiftUI


struct TaskListView: View {
    @StateObject private var viewModel = TaskListViewModel()
    
    @State private var isThereTask: Bool = false
    @State private var isThereCompleted: Bool = false
    
    var body: some View {
        NavigationStack(path:$viewModel.toDoStack) {
            List {
                if((viewModel.toDoItems.count == 0)) { Text("No notes")}
                
                Section(isThereTask ? "Incomplete" : ""){
                    ForEach(viewModel.toDoItems.filter { $0.isCompleted == false }) { item in
                        NavigationLink(value: item, label: {
                            RowView(task: item, toggleItemCompletion: self.viewModel.toggleItemCompletion)
                        })
                        .navigationDestination(for: TaskModel.self) { item in
                            TaskDetailView(toDoItem: item, toDoItems: $viewModel.toDoItems, toDoStack: $viewModel.toDoStack)
                        }
                    }
                    .onDelete { indexSet in
                        self.viewModel.deleteItem(at: indexSet)
                    }
                    .onAppear(
                        perform: {isThereTask.toggle()}
                    )
                    .onDisappear(
                        perform: {isThereTask.toggle()}
                    )
                    
                }
                
                Section(isThereCompleted ? "Completed" : ""){
                    ForEach(viewModel.toDoItems.filter { $0.isCompleted == true }) { item in
                        RowView(task: item, toggleItemCompletion: self.viewModel.toggleItemCompletion)
                    }
                    .onDelete { indexSet in
                        self.viewModel.deleteItem(at: indexSet)
                    }
                    .onAppear(
                        perform: {isThereCompleted.toggle()}
                    )
                    .onDisappear(
                        perform: {isThereCompleted.toggle()}
                    )
                }
                
                
            }
            .navigationBarTitle("Notes")
            .navigationBarItems(trailing:
                Button(action: viewModel.addItem) {
                    Image(systemName: "plus")
                }
            )
        }
        
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
