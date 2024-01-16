//
//  TaskModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 15.01.2024.
//

import Foundation
import CoreData

class TaskModel: ObservableObject {
    
    var CoreData = CoreDataManager.shared
    @Published var tasks = [Task]()
    
    func getEntities(){
        tasks = CoreData.allEntities()
    }
    init(){
        getEntities()
    }
}
