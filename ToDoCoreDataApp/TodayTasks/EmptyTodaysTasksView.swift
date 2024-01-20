//
//  EmptyTodaysTasksView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 20.01.2024.
//

import SwiftUI

struct EmptyTodaysTasksView: View {
    var body: some View {
        Text("No tasks for today \n Tap \"+\" to add some!")
            .multilineTextAlignment(.center)
            .font(.lexenddeca(.regular, size: 18))
            .foregroundStyle(.customBlack)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.2), radius: 7)
            )
        
    }
}

#Preview {
    EmptyTodaysTasksView()
}
