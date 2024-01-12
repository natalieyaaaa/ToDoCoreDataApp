//
//  AddView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct AddView: View {
    @State var text1 = ""
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    HStack {
                        
                        Button {
                            // back to start view
                        } label: {
                            Image("arrow.left")
                                .renderingMode(.template)
                                .foregroundColor(.customBlack)
                        } .padding(.leading, 22)
                        
                        Spacer()
                        
                        Text("Add Project")
                            .font(.lexenddeca(.semiBold, size: 23))
                            .foregroundColor(Color.customBlack)
                        
                        Spacer()
                        
                        Button {
                            // notification panel
                        } label: {
                            Image("notification")
                                .renderingMode(.template)
                                .foregroundColor(.customBlack)
                        }.padding(.trailing, 22)
                    }
                                        
                    CustomAddTextField(text: $text1)
                        .shadow(color: .black.opacity(0.1), radius: 6)
                    // Example for iPad...
                        .frame(maxWidth: 600)
                    
                    Spacer()
                }
            }.background(AddViewBackground())
        }.navigationViewStyle(.stack)
    }
}

#Preview {
    AddView()
}
