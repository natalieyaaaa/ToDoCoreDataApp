//
//  TaskModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 15.01.2024.
//

import Foundation
import CoreData

class TaskModel: ObservableObject {
    
    var coreData = CoreDataManager.shared
//    var task: Task
    
    @Published var tasks = [Task]()
    @Published var todayTasks = [Task]()
    
    func getEntities(){
        tasks = coreData.allEntities()
    }
    init(){
        getEntities()
        getTodayTasks()
    }
    
    func getTodayTasks() {
        for task in tasks {
            if Calendar.current.isDateInToday(task.dueDate!) {
                todayTasks.append(task)
            }
        }
    }
}
