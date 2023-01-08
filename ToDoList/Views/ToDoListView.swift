//
//  List.swift
//  ToDoList
//
//  Created by youlserf on 7/01/23.
//

import SwiftUI


struct ToDoListView: View {
    
    @State var toDoItems = [ToDoItem]()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(toDoItems) { item in
                    /*ToDoRow(task: item, toggleItemCompletion: self.toggleItemCompletion)*/
                    NavigationLink {
                        ToDoDetailView(toDoItem: item, toDoItems: $toDoItems)
                    } label : {
                    Text("Hello")
                    }
                }
                .onDelete { indexSet in
                    self.deleteItem(at: indexSet)
                }
            }
            .navigationBarTitle("To Do List")
            .navigationBarItems(trailing:
                                    Button(action: addItem) {
                Image(systemName: "plus")
            }
            )
        }
    }
    
    func toggleItemCompletion(_ item: ToDoItem) {
        if let index = toDoItems.firstIndex(where: { $0.id == item.id }) {
            toDoItems[index].isCompleted.toggle()
        }
    }
    
    func deleteItem(at indexSet: IndexSet) {
        toDoItems.remove(atOffsets: indexSet)
    }
    
    func addItem() {
        toDoItems.append(ToDoItem(name: "New Item", detail: "", isCompleted: false))
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
