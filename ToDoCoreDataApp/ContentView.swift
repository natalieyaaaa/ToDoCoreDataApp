//
//  ContentView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
        
    let all = CoreDataManager.shared.allEntities()
    @State private var selection: Int = 1

    var body: some View {
        
        if all.isEmpty {
            StartView()
        } else {
            
            TabView(selection: $selection) {
                
              TodayTasksView()
                .tabItem { Image(systemName: "list.bullet.clipboard") }
                .tag(1)
                .environmentObject(TaskModel())

                AddView()
                    .tabItem { Image(systemName: "plus") }
                    .tag(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
