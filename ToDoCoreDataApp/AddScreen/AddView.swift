//
//  AddView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct AddView: View {
    
    @StateObject var avm = AddViewModel()
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Button {
                        // back to start view dismiss
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
                CustomDatePicker(date: $avm.startDate, title: "Start Date")
                
                CustomDatePicker(date: $avm.dueDate, title: "End Date")
                
                Spacer()
                
                NavigationLink {
                    TodayTasksView()
                    
                } label : {
//                    Button {
//                        avm.addProjectButton()
//                    } label: {
                        CustomButton(title: "Add Project")
                            .padding(.bottom, 20)
//                    }
                } // зроби через онтапгестуре або інша логіка: воно баттон працювати не буде
            }
        }.background(
            CustomBackground().ignoresSafeArea()
                .onTapGesture {
                    hideKeyboard()
                }
        )
        .ignoresSafeArea(.keyboard)
    }
    
}

#Preview {
    AddView()
}

func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}
