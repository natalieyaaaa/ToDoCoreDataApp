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
    @Published var tasks = [Task]()
    
    func getEntities(){
        tasks = coreData.allEntities()
    }
    init(){
        getEntities()
    }
}
