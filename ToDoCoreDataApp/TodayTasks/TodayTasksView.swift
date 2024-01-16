//
//  TodaTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct TodayTasksView: View {
    
    @EnvironmentObject var tm: TaskModel
    
    var task = [Task]()
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                ForEach(<#_#>)
                
            } .background(
                CustomBackground().ignoresSafeArea())
        }
    }
}

#Preview {
    TodayTasksView()
        .environmentObject(TaskModel())
}
