//
//  TodayTaskViewModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 20.01.2024.
//

import Foundation
import CoreData

class TodayTaskViewModel: ObservableObject {
    
    var coreData = CoreDataManager.shared
    var mainModel = MainViewModel.shared
    
//    @Published var todayTasks = [Task]()
    
//    init() {
//        getTodayTasks()
//    }
    
//    func getTodayTasks() {
//        for task in mainModel.tasks {
//            if Calendar.current.isDateInToday(task.dueDate!) {
//                todayTasks.append(task)
//            }
//        }
//    }
    
//    func doneButton() {
//        
//    }
}
