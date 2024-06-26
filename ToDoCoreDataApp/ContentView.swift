//
//  ContentView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 0
    @AppStorage("firstLaunch") var firstLaunch = true
    
    @StateObject var vm = MainViewModel()
    
    var body: some View {
        VStack {
            if firstLaunch {
                StartView()
            } else {
                
                TabView(selection: $selection) {
                    
                    TodayTasksView()
                        .environmentObject(vm)
                        .tabItem { Image(systemName: "list.bullet.clipboard")
                                .renderingMode(.template)
                        }
                        .tag(1)
                    
                    AddView(selection: $selection)
                        .tabItem { Image(systemName: "plus")
                            .renderingMode(.template)}
                        .tag(2)
                    
                }.accentColor(.customPurple)
                
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(MainViewModel())
}
