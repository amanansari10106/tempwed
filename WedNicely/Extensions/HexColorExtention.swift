//
//  HexColorExtention.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import Foundation
import SwiftUI
import Combine

// Hex code does not have any in built fuction to convert the hex code to color
// so this extention fuction extened the inbuild fuction of color so that it can directly convert hex code to color

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}
