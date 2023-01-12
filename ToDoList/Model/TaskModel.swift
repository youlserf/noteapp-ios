//
//  TaskModel.swift
//  ToDoList
//
//  Created by youlserf on 8/01/23.
//
import SwiftUI

struct TaskModel: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var detail: String
    var isCompleted: Bool
}


