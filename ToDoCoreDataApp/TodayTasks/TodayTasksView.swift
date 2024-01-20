//
//  TodaTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct TodayTasksView: View {
    
    @EnvironmentObject var vm: MainViewModel
        
    var body: some View {
        VStack {
            Text("Today's Tasks")
                .font(.lexenddeca(.bold, size: 25))
                .foregroundStyle(.customBlack)
            
            if vm.todayTasks.isEmpty {
                
                Spacer()
                EmptyTodaysTasksView()
                Spacer()
                
            } else {
                ScrollView {
                    ForEach(vm.todayTasks, id: \.id) { task in
                        TaskView(task: task)
                    }
                }
            }
        }.background(
            CustomBackground().ignoresSafeArea())
        .animation(.easeInOut, value: vm.todayTasks)
        .onAppear {
            vm.getData()
        }
    }
}

#Preview {
    TodayTasksView()
        .environmentObject(MainViewModel())
}
