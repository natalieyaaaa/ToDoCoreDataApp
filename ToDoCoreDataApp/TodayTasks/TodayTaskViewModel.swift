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
//    var allTasks = TaskModel.tasks
    
    var todayTasks = [Task]()
    
    static func getTodayTasks() {
//        let allTasks = 
    }
}
