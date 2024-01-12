//
//  Icons.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 12.01.2024.
//

import SwiftUI

extension Font {
    enum Lexenddeca: String {
        case regular = "LexendDeca-Regular"
        case medium = "LexendDeca-Medium"
        case bold = "LexendDeca-Bold"
        case extraBold = "LexendDeca-ExtraBold"
        case extraLight = "LexendDeca-ExtraLight"
        case light = "LexendDeca-Light"
        case semiBold = "LexendDeca-SemiBold"
        case thin = "LexendDeca-Thin"
    }
    
    static func lexenddeca(_ style: Lexenddeca, size: CGFloat) -> Font {
        return Font.custom(style.rawValue, size: size)
    }
}
