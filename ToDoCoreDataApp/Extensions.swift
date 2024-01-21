//
//  Extensions.swift
//  ToDoCoreDataApp
//
//  Created by Наташа Яковчук on 21.01.2024.
//

import Foundation
import SwiftUI

// Swipe-back...
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

// Back extensions
extension View {
    // Is phone SE
    var isSE: Bool { return UIScreen.main.bounds.height < 680 }
    // Is iPad
    var isDevicePad: Bool { return UIDevice.current.userInterfaceIdiom == .pad }
    var screen: CGRect { return UIScreen.main.bounds }
    
    //For old iOS
    func modify<Content>(@ViewBuilder _ transform: (Self) -> Content) -> Content {
        transform(self)
    }
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}
