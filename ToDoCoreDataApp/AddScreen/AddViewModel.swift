//
//  AddViewModel.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import Foundation
import CoreData

class AddViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var notes = ""
    @Published var startDate = Date()
    @Published var dueDate = Date()
    @Published var status = "none"
//    @Published var isDone = false
    
    func addProjectButton() {
        guard name != "", notes != "" else {return}
        CoreDataManager.shared.saveEntity(name: name, notes: notes, dueDate: dueDate, startDate: startDate, status: status)
        print("project saved")
    }
}

