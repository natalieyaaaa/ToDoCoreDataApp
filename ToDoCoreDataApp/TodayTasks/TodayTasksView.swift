//
//  TodaTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct TodayTasksView: View {

    @StateObject var tm = TaskModel()
    
    var body: some View {
            VStack {
                Text("Today's Tasks")
                    .font(.lexenddeca(.bold, size: 25))
                    .foregroundStyle(.customBlack)
                
                if tm.todayTasks.isEmpty {
                    
                    Spacer()
                    EmptyTodaysTasksView()
                    Spacer()
                    
                } else {
                    ScrollView {
                        ForEach(tm.todayTasks, id: \.self) { task in
                            TaskView(task: task)
                        }
                    }
                }
            }.background(
                CustomBackground().ignoresSafeArea())
            .onAppear {
                tm.getEntities()
            }
    }
}

#Preview {
    TodayTasksView()
//        .environmentObject(TaskModel())
}
