//
//  TaskView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 16.01.2024.
//

import SwiftUI

struct TaskView: View {
    
    var task: Task
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter}()
    
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text(task.name!)
                        .font(.lexenddeca(.semiBold, size: 16))
                        .foregroundStyle(.customBlack)
                    
                    Spacer()
                    
                    Image(systemName: "circle")
                        .foregroundStyle(.customPurple)
                }.padding(.bottom)
                
                Text("Due date: \(dateFormatter.string(from: task.dueDate!))")
                    .font(.lexenddeca(.light, size: 13))
                    .foregroundStyle(.greySecondary)
            } .padding()
                .background(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    TaskView(task: Task.example)
}
