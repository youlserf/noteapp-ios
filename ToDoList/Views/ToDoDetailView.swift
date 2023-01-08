//
//  ToDoDetailView.swift
//  ToDoList
//
//  Created by youlserf on 7/01/23.
//

import SwiftUI

struct ToDoDetailView: View {
    @State var toDoItem: ToDoItem
    @Binding var toDoItems:  [ToDoItem]
    
    var body: some View {
        VStack {
            TextField(
                "Title",
            text: $toDoItem.name)
        TextField(
        "Detalle",
        text: $toDoItem.detail)
            
        }
        .navigationTitle("Detalle")
        .navigationBarTitleDisplayMode(.inline)
        
        Button(action: {
            updateItem(toDoItem)
        }){
            Text("Save")
        }
    }
    
    func updateItem(_ item: ToDoItem) {
        if let index = toDoItems.firstIndex(where: {
            $0.id == item.id
        }){
            toDoItems [index] = item
        }
    }
}

/*struct ToDoDetailView_Previews: PreviewProvider {

    static var previews: some View {
        ToDoDetailView(toDoItem: ToDoItem(name: "New Item", detail: nil, isCompleted: false))
    }
}*/
