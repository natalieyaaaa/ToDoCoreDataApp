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
    
    @EnvironmentObject var vm: MainViewModel
    
    var body: some View {
        VStack {
            if firstLaunch {
                StartView()
            } else {
                TabView(selection: $selection) {
                    
                    TodayTasksView()
                        .environmentObject(MainViewModel())
                        .tabItem { Image(systemName: "list.bullet.clipboard") }
                        .tag(1)
                    
                    AddView()
                        .tabItem { Image(systemName: "plus") }
                        .tag(2)
                        .environmentObject(AddViewModel())
                }
            }
        } 
    }
}

#Preview {
    ContentView()
        .environmentObject(MainViewModel())
}
