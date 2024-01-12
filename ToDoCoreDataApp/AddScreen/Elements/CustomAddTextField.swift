//
//  CustomAddTextField.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct CustomAddTextField: View {
    
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Project Name")
                .font(.lexenddeca(.regular, size: 9))
                .foregroundColor(.greySecondary)
            
            TextField("Grocery Shopping App", text: $text)
                .font(.lexenddeca(.regular, size: 14))
                .foregroundColor(.customBlack)
            
        }.padding()
            .background(Color.white)
            .cornerRadius(15)
        .padding(.horizontal, 22)
        
    }
}

#Preview {
    CustomAddTextField(text: .constant("fed"))
}
