//
//  ToDoItem.swift
//  ToDoList
//
//  Created by youlserf on 8/01/23.
//
import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    var name: String
    var detail: String
    var isCompleted: Bool
}


