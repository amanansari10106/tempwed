//
//  ColorsConstants.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import Foundation
import SwiftUI

// 0x - this common for all colors
// we need to add next character according to the color we need

class ColorConstants{
    enum Colors{
        
        //Colors for Blue Gradient Buttons, And Progress Bar
        static let PURPLE_COLOR_Light: Color = Color(hex: 0x4F64F0)
        static let PURPLE_COLOR_Dark: Color = Color(hex: 0x8D62E3)
        
        //Colors for Red Gradient Buttons
        static let RED_COLOR_Light: Color = Color(hex: 0xFF3C68)
        static let RED_COLOR_Dark: Color = Color(hex: 0xFF4B2B)
        
        //Light Blue Color For TextFiels Background
        static let BLUE_COLOR_Light: Color = Color(hex: 0xF5F7FE)
        
        // Light Gray Color used in Resend Button
        static let GRAY_COLOR_LIGHT: Color = Color(hex: 0xDDDDDD)
        
        static let DISABLED_COLOR: Color = Color(hex: 0xAAAAAA)

       

    }

}
