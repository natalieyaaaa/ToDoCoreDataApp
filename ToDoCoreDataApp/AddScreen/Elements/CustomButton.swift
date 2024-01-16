//
//  CustomButton.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

var title = "Add Project"

struct CustomButton: View {
    var body: some View {
        
        Text(title)
            .font(.lexenddeca(.semiBold, size: 21))
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20)
                .frame(maxWidth: 600)
                .frame(width: 350)
                .foregroundColor(.customPurple)
            )
    }
}

#Preview {
    CustomButton()
}
