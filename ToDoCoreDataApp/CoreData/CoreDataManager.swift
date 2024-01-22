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
    func saveEntity(name: String, notes: String, dueDate: Date, startDate: Date, status: String) {
        let entity = Task(context: persistentContainer.viewContext)
        entity.name = name
        entity.notes = notes
        entity.dueDate = dueDate
        entity.startDate = startDate
        entity.status = status
        
        do {
            try persistentContainer.viewContext.save()
        } catch let error {
            persistentContainer.viewContext.rollback()
            print("Error saving CoreData entity: \(error.localizedDescription)")
        }
    }
        
        func deleteEntity(entity: Task) {
            persistentContainer.viewContext.delete(entity)
            updateEntity()
            print("entity deleted")
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

// for previews
extension Task {
    
    static var example: Task {
        
        // Get the first PlanPoint from the in-memory Core Data store
        let context = CoreDataManager.shared.persistentContainer.viewContext
        
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        fetchRequest.fetchLimit = 1
        
        let results = try? context.fetch(fetchRequest)
        
        return (results?.first!)!
    }
}

