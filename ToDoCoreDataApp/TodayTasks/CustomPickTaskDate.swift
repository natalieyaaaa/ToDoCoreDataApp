//
//  CustomPickTaskDate.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 21.01.2024.
//

import SwiftUI

struct CustomPickTaskDate: View {
    
     var month: String
     var day: String
     var weekday: String
    
    var body: some View {
        VStack {
            
            Text(month)
                .padding(.top, 7)
                .font(.lexenddeca(.regular, size: 16))
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(day)
                .font(.lexenddeca(.regular, size: 22))
                .foregroundStyle(.white)

            Spacer()
            
            Text(weekday)
                .padding(.bottom, 7)
                .font(.lexenddeca(.regular, size: 16))
                .foregroundStyle(.white)

            
        } .frame(width: 90, height: 120)
        .background(RoundedRectangle(cornerRadius: 20)
//            .frame(width: 90, height: 120)
            .foregroundStyle(.customPurple.opacity(0.6)))    }
}

#Preview {
    CustomPickTaskDate(month: "Jan", day: "22", weekday: "Mon")
}
