//
//  TaskModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 15.01.2024.
//

import Foundation
import CoreData

class MainVewModel: ObservableObject {
    
    static var shared = MainVewModel()
    
    var coreData = CoreDataManager.shared
    
    @Published var tasks = [Task]()
    @Published var todayTasks = [Task]()
    
    
    init(){
        getEntities()
        //        getTodayTasks()
    }
    func getEntities(){
        tasks = coreData.allEntities()
    }
    
    func getTodayTasks() {
        guard !tasks.isEmpty else {print("tasks are empty"); return}
        for task in tasks {
            if Calendar.current.isDateInToday(task.dueDate!) {
                guard !todayTasks.contains(task) else {return}
                todayTasks.append(task)
            }
        }
    }
    
    func deleteButton(task: Task) {
        coreData.deleteEntity(entity: task)
        getEntities()
    }
}
