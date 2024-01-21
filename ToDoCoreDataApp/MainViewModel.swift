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
    @Published var filteredTasks = [Task]()

    let calendar = Calendar.current
    @Published var date = Date()
    
    init(){
        getData()
    }
    func getData(){
        tasks = coreData.allEntities()
        getFilteredTasks()
    }
    
    func getFilteredTasks() {
        filteredTasks.removeAll()
        guard !tasks.isEmpty else {print("tasks are empty"); return}
        filteredTasks = tasks.filter { Calendar.current.compare($0.dueDate!, to: date, toGranularity: .day) == .orderedSame}
    }
    
    func deleteButton(task: Task) {
        coreData.deleteEntity(entity: task)
        getData()
    }
}


