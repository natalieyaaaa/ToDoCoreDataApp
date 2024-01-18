//
//  StartView.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 13.01.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AddView()
                        .navigationBarBackButtonHidden()
                        .navigationBarHidden(true)){
                    Text("Start")
                }
            }.background(
                CustomBackground().ignoresSafeArea())
        }.navigationViewStyle(.stack)
    }
}

#Preview {
    StartView()
}
