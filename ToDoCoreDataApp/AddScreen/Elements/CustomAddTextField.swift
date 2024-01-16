//
//  CustomAddTextField.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct CustomAddTextField: View {
    
    @Binding var text: String
    @FocusState var isFieldFocused
    
    var isNotes = false

    var title = "Project"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.lexenddeca(.regular, size: 11))
                .foregroundColor(.greySecondary)
            
            Group {
                if isNotes {
                    TextEditor(text: $text)
                        .focused($isFieldFocused)
                        .overlay {
                            ZStack {
                                if text.isEmpty {
                                    Text(title)
                                        .opacity(0.3)
                                        .padding(.top, 10)
                                        .padding(.leading, 3)
                                        .onTapGesture {
                                            isFieldFocused = true
                                        }
                                }
                            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        }
                } else {
                    TextField("Grocery Shopping App", text: $text)

                }
            }.font(.lexenddeca(.regular, size: 14))
                .foregroundColor(.customBlack)

            
        }.padding()
            .background(Color.white)
            .cornerRadius(15)
            .frame(width: 370, height: isNotes ? 142 : 63 )
        .padding(.horizontal, 22)
        .padding(.top, 24)
        .shadow(color: .black.opacity(0.1), radius: 6)
    // Example for iPad...
        .frame(maxWidth: 600)
    }
}

#Preview {
    CustomAddTextField(text: .constant(""), title: "Project name")
}
