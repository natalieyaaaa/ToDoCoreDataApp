//
//  StartView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Text("Task Management &\n To-Do List")
                .multilineTextAlignment(.center)
                .font(.lexenddeca(.semiBold, size: 24))
                .foregroundStyle(.customBlack)
            
            Text("This productive tool is designed to help\nyou better manage your task\nproject-wise conveniently!")
                .multilineTextAlignment(.center)
                .font(.lexenddeca(.regular, size: 14))
                .foregroundStyle(.greySecondary)
                .padding(.vertical, 5)
            
            Button {
                UserDefaults.standard.set(false, forKey: "firstLaunch")
            } label: {
                CustomButton(title: "Let's Start ")
            } .padding(.vertical)
            
        }.padding(.bottom, 30)
            .background(
                StartBackground().ignoresSafeArea())
    }
}

#Preview {
    StartView()
}


extension Image {
    
    func customStartBackgroundItems(width: CGFloat, height: CGFloat, bottom: CGFloat, top: CGFloat, leading: CGFloat, trailing: CGFloat) -> some View {
        
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .padding(.bottom, bottom)
            .padding(.top, top)
            .padding(.leading, leading)
            .padding(.trailing, trailing)
    }
}
