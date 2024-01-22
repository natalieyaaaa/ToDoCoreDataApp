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
                .frame(height: 30)
            
            Divider().frame(width: 300, height: 1)

            HStack {
                DatePicker("", selection: $vm.date, displayedComponents: .date)
                    .frame(width: 150)
                    .overlay(alignment: .leading) {
                        Image("calendar")
                    }
            }.padding(.trailing)
                .padding(.top, 5)
                .datePickerStyle(.compact)
            
//            ScrollView(.vertical) {
//                LazyHStack {
//                    
//                    Button {
//                        
//                    } label: {
//                        CustomPickTaskDate(month: "Jan", day: "22", weekday: "Mon")
//                    }
//                }
//            } .frame(height: 140)
            
            Spacer().frame(height: 20)
            
            if vm.filteredTasks.isEmpty {
                
                Spacer()
                EmptyTodaysTasksView()
                Spacer()
                
            } else {
                ScrollView {
                    ForEach(vm.filteredTasks, id: \.id) { task in
                        TaskView(task: task)
                    }
                }
            }
        }.background(
            CustomBackground().ignoresSafeArea())
        .animation(.easeInOut, value: vm.filteredTasks)

        .onAppear {
            vm.getData()
        }
        .onChange(of: vm.date, vm.getFilteredTasks)
    }
}

#Preview {
    TodayTasksView()
        .environmentObject(MainViewModel())
}
