//
//  AddView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct AddView: View {
    
    @StateObject var avm = AddViewModel()
    
    @Binding var selection: Int
    var body: some View {
        ScrollView {
                VStack {
                    HStack {
                        
                        Button {
                            selection = 1
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
                    }.onTapGesture {
                        hideKeyboard()
                    }
                    
                    CustomAddTextField(text: $avm.name, title: "Project name")
                        .padding(.top, 40)
                        .onTapGesture {
                            hideKeyboard()
                        }
                    
                    CustomAddTextField(text: $avm.notes, isNotes: true, title: "Description")
                        .onTapGesture {
                            hideKeyboard()
                        }
                    
                    CustomDatePicker(date: $avm.toDoDate, title: "Date")
                    
                    Spacer()
        
                }
            .background(
                CustomBackground().ignoresSafeArea()
                    .onTapGesture {
                        hideKeyboard()
                    }
            )
        }.ignoresSafeArea(.keyboard)
            .overlay {
                VStack {
                    Spacer()
                    Button {
                        avm.addProjectButton()
                        selection = 1
                    } label: {
                        CustomButton(title: "Add Project")
                            .padding(.bottom, 20)
                    }
                }.ignoresSafeArea(.keyboard)
            }
            .scrollDisabled(true)
        
    }
    
}

//#Preview {
//    AddView()
//        .environmentObject(AddViewModel())
//}
