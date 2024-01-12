//
//  AddViewBackground.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

struct AddViewBackground: View {
    var body: some View {
        ZStack {
            Circle()
                .customEllipseStyle(width: 70, height: 70, red: 0.27, green: 0.94, blue: 0.5, bottom: 769, top: 16, leading: 13, trailing: 368)
                
            Circle()
                .customEllipseStyle(width: 60, height: 60, red: 0.27, green: 0.74, blue: 0.94, bottom: 533, top: 246, leading: 362, trailing: 29)
            
            
            Circle()
                .customEllipseStyle(width: 96, height: 96, red: 0.27, green: 0.74, blue: 0.94,bottom: 189, top: 554, leading: 16, trailing: 355)
            
            Circle()
                .customEllipseStyle(width: 74, height: 74, red: 0.37, green: 0.15, blue: 1,bottom: 533, top: 224, leading: 101, trailing: 276)
            
            Circle()
                .customEllipseStyle(width: 58, height: 58, red: 0.94, green: 0.71, blue: 0.27, bottom: 16, top: 781, leading: 269, trailing: 124)
            
            Circle()
                .customEllipseStyle(width: 118, height: 118, red: 0.93, green: 0.94, blue: 0.27, bottom: 533, top: 345, leading: 333, trailing: 16)
            
        }
    }
}

#Preview {
    AddViewBackground()
}

extension Shape {
    
    func customEllipseStyle(width: CGFloat, height: CGFloat, red: CGFloat, green: CGFloat, blue: CGFloat, bottom: CGFloat, top: CGFloat, leading: CGFloat, trailing: CGFloat) -> some View {
        
        self
            .frame(width: width, height: height)
            .foregroundColor(Color(red: red, green: green, blue: blue))
            .blur(radius: 75)
            .padding(.bottom, bottom)
            .padding(.leading, leading)
            .padding(.trailing, trailing)
            .padding(.top, top)
    }
}
