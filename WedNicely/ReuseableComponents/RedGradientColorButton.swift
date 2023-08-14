//
//  RedGradientColorButton.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct RedGradentColorButton: View {
    var text:String
    var height:CGFloat?
    var fullWidth:CGFloat?

//    var action: () -> Void
    var body: some View {
     
                 Text(text)
                     .font(.headline)
                     .foregroundColor(.white)
                     .frame(maxWidth: fullWidth)
                     .frame(height: height)
                     .background(
                        LinearGradient(gradient: Gradient(colors: [ColorConstants.Colors.RED_COLOR_Light,ColorConstants.Colors.RED_COLOR_Dark]), startPoint: .top, endPoint: .bottom)
                     )
                     .cornerRadius(30)
                     .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
             
    }
}

struct RedGradentColorButton_Previews: PreviewProvider {
    static var previews: some View {
        RedGradentColorButton(text: "Hello")
    }
}
