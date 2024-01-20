//
//  TaskModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 15.01.2024.
//

import Foundation
import CoreData

class MainViewModel: ObservableObject {
    
    static var shared = MainViewModel()
    
    var coreData = CoreDataManager.shared
    
    @Published var tasks = [Task]()
    @Published var todayTasks = [Task]()
    
    init(){
        getData()
        //        getTodayTasks()
    }
    func getData(){
        tasks = coreData.allEntities()
        getTodayTasks()
    }
    
    func getTodayTasks() {
        guard !tasks.isEmpty else {print("tasks are empty"); return}
        todayTasks.removeAll()
        for task in tasks {
            if Calendar.current.isDateInToday(task.dueDate!) {
                guard !todayTasks.contains(task) else {return}
                todayTasks.append(task)
            }
        }
    }
    
    func deleteButton(task: Task) {
        coreData.deleteEntity(entity: task)
        getData()
    }
}
