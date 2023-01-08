//
//  ExampleView.swift
//  ToDoList
//
//  Created by youlserf on 7/01/23.
//
/*
struct ExampleView: View {
    @State var toDoItems = [ToDoItem]()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(toDoItems) { item in
                    HStack {
                        Group{
                            Text(item.name)
                                .strikethrough(item.isCompleted)
                            Spacer()
                            Image(systemName: item.isCompleted ? "checkmark.square" : "square")
                        }.onTapGesture {
                            self.toggleItemCompletion(item)
                        }
                        
                        Button(action: {
                            self.editItem(item)
                        }) {
                            Image(systemName: "pencil")
                        }.buttonStyle(PlainButtonStyle())
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
    
    
    
    func deleteItem(at indexSet: IndexSet) {
        toDoItems.remove(atOffsets: indexSet)
    }
    
    func addItem() {
        toDoItems.append(ToDoItem(name: "New Item", detail: nil, isCompleted: false))
    }
    
    func editItem(_ item: ToDoItem) {
        print("Hello Hello")
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
*/
