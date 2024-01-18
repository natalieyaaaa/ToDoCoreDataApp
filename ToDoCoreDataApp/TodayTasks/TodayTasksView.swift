//
//  TodaTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct TodayTasksView: View {
    
    @EnvironmentObject var tm: TaskModel
    
    var body: some View {
            VStack {
                Text("Today's Tasks")
                    .font(.lexenddeca(.bold, size: 25))
                    .foregroundStyle(.customBlack)
                
                ScrollView {
                    ForEach(tm.tasks, id: \.self) { task in
                        TaskView(task: task)
                    }
                }
            } .background(
                CustomBackground().ignoresSafeArea())
    }
}

#Preview {
    TodayTasksView()
        .environmentObject(TaskModel())
}
