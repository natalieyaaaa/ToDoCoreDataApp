//
//  CoreDataManager.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import Foundation
import SwiftUI
import CoreData

class CoreDataManager: ObservableObject {
    
    static var shared = CoreDataManager()
    
    let persistentContainer: NSPersistentContainer
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "Tasks")
        persistentContainer.loadPersistentStores { description, error in
            guard error == nil else {print("Error of init CoreDataService: \(error!.localizedDescription)"); return}
        }
    }
    
    func updateEntity() {
        do {
            try persistentContainer.viewContext.save()
        } catch let error {
            persistentContainer.viewContext.rollback()
            print("Error updating CoreData entity: \(error.localizedDescription)")
        }
    }
    
    // edit the function according to your entity attributes
    func saveEntity(name: String, notes: String, dueDate: Date) {
        let entity = Task(context: persistentContainer.viewContext)
        entity.name = name
        entity.notes = notes
        entity.dueDate = dueDate
        
        updateEntity()
    }
        
        func deleteEntity(entity: Task) {
            persistentContainer.viewContext.delete(entity)
            
            updateEntity()
        }
        
        func allEntities() -> [Task] {
            let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
            do {
                return try persistentContainer.viewContext.fetch(fetchRequest)
            } catch let error {
                print("Error getting all CoreData entities: \(error.localizedDescription)")
                return []
            }
        }
    }

