//
//  ContentView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
        
    let all = CoreDataManager.shared.allEntities()

    var body: some View {
        
        if all.isEmpty {
            
        } else {
            AddView()
        }
    }
}

#Preview {
    ContentView()
}
