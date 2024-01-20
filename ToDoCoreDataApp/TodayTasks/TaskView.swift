//
//  TaskView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 16.01.2024.
//

import SwiftUI

struct TaskView: View {
    
    var task: Task
    @State var isChecked = false
    
    @StateObject var coreData = CoreDataManager.shared
    @StateObject var mm = MainVewModel()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter}()
    
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        
                        Image(systemName: "list.bullet.clipboard")
                            .foregroundStyle(.customBlack)
                        Text(task.name!)
                            .font(.lexenddeca(.semiBold, size: 16))
                            .foregroundStyle(.customBlack)
                        
                    }.padding(.bottom)
                    
                    HStack {
                        Text("Due date:")
                            .font(.lexenddeca(.light, size: 13))
                            .foregroundStyle(.greySecondary)
                        
                        Text(dateFormatter.string(from: task.dueDate!))
                            .font(.lexenddeca(.light, size: 13))
                            .foregroundStyle(.customBlack)
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 15)
                                .foregroundStyle(.customPurple.opacity(0.2)))
                        
                        Button {
                            mm.deleteButton(task: task)
                        } label: {
                            Image(systemName: "trash")
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    isChecked.toggle()
                    
                } label: {
                    if isChecked == true {
                        Image(systemName: "checkmark.circle")
                            .font(.title3)
                            .foregroundStyle(.green)
                    } else {
                        Image(systemName: "circle")
                            .foregroundStyle(.customPurple)
                            .font(.title3)
                    }
                }
                
            } .padding()
                .frame(width: 350)
                .frame(maxWidth: 600)
                .background(RoundedRectangle(cornerRadius: 20)
                    .frame(width: 360)
                    .foregroundStyle(.customPurple.opacity(0.1))
                    .shadow(radius: 7)
                ).padding(.bottom, 15)

    }
}

#Preview {
    TaskView(task: Task.example)
}
