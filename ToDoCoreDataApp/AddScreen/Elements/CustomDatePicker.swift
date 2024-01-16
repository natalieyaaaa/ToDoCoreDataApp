//
//  CustomDatePicker.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct CustomDatePicker: View {
    
    @Binding var date: Date
    var title = "StartDate"
    
    var body: some View {
        HStack(spacing: 20) {
            Image("calendar")
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.lexenddeca(.regular, size: 11))
                    .foregroundStyle(.greySecondary)
                
                Text(formatDate(date))
                    .font(.lexenddeca(.regular, size: 14))
                    .foregroundStyle(.customBlack)
            }
            
            Spacer()
            
            Image("arrow.down")
                .bold()
                .overlay {
                    DatePicker("\(date)", selection: $date, displayedComponents: [.date])
                        .datePickerStyle(.compact)
                        .transformEffect(.init(scaleX: 0.3, y: 1))
                        .offset(x: 40)
                        .opacity(0.02)
                }
        }.padding()
            .background(Color.white)
            .cornerRadius(15)
            .frame(width: 370, height: 63)
            .shadow(color: .black.opacity(0.1), radius: 6)
            .frame(maxWidth: 600)
            .padding(.top, 24)
    }
}

#Preview {
    CustomDatePicker(date: .constant(Date.now), title: "Start Date")
}


func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "d MMM, yyyy"

    let formattedDate = dateFormatter.string(from: date)
    return formattedDate
}
