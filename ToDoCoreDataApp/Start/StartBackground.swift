//
//  StartBackground.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 19.01.2024.
//

import SwiftUI

struct StartBackground: View {
    var body: some View {
        ZStack {
            Image("female.sitting")
                .customStartBackgroundItems(width: 159, height: 184, bottom: 481, top: 147, leading: 131, trailing: 85)
            
            Image("ellipse7")
                .customStartBackgroundItems(width: 8, height: 8, bottom: 731, top: 73, leading: 252, trailing: 115)
            
            Image("ellipse8")
                .customStartBackgroundItems(width: 4, height: 4, bottom: 716, top: 92, leading: 202, trailing: 169)
            
            Image("watch")
                .customStartBackgroundItems(width: 40, height: 50, bottom: 693, top: 69, leading: 104, trailing: 231)
            
            Image("pie")
                .customStartBackgroundItems(width: 26, height: 26, bottom: 606, top: 180, leading: 84, trailing: 265)
            
            Image("calendar.blue")
                .customStartBackgroundItems(width: 40, height: 340, bottom: 643, top: 136, leading: 276, trailing: 62.5)
            
            Image("notif")
                .customStartBackgroundItems(width: 62, height: 42, bottom: 545, top: 225, leading: 245, trailing: 68)
            
            Image("vase")
                .customStartBackgroundItems(width: 36, height: 52, bottom: 481, top: 279, leading: 79, trailing: 260)
            
            Image("cup")
                .customStartBackgroundItems(width: 18, height: 22, bottom: 480, top: 310, leading: 67, trailing: 290)
            
            Image("ellipse9")
                .customStartBackgroundItems(width: 8, height: 8, bottom: 413, top: 391, leading: 138, trailing: 229)
            
            Image("ellipse10")
                .customStartBackgroundItems(width: 4, height: 4, bottom: 403, top: 405, leading: 176, trailing: 195)
            
            Image("ellipse5")
                .customStartBackgroundItems(width: 8, height: 8, bottom: 421, top: 383, leading: 250, trailing: 117)
            
            Image("ellipse6")
                .customStartBackgroundItems(width: 4, height: 4, bottom: 446, top: 362, leading: 281, trailing: 90)
        } .background(
            CustomBackground().ignoresSafeArea())
    }
}

#Preview {
    StartBackground()
}
