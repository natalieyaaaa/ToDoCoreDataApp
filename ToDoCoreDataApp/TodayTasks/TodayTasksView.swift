//
//  TodaTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct TodayTasksView: View {
    
    @StateObject var vm = MainVewModel()
//    @State var toRefresh = false
    
    //    @StateObject var mm = MainVewModel()
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
                    ForEach(vm.todayTasks, id: \.self) { task in
                        TaskView(task: task)
                    }
                }
            }
        }.background(
            CustomBackground().ignoresSafeArea())
        .onAppear {
            vm.getTodayTasks()
        }
    }
}

#Preview {
    TodayTasksView()
}
