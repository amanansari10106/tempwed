//
//  RedGradentColorButton.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct PurpleGradentColorButton: View {
    var text:String
    var height:CGFloat?
    var fullWidth:CGFloat?
    
    var body: some View {
       
                 Text(text)
                     .font(.headline)
                     .foregroundColor(.white)
                     .frame(maxWidth: fullWidth)
                     .frame(height: height)
                     .background(
                        LinearGradient(gradient: Gradient(colors: [ColorConstants.Colors.PURPLE_COLOR_Dark,ColorConstants.Colors.PURPLE_COLOR_Light]), startPoint: .leading, endPoint: .trailing)
                     )
                     .cornerRadius(30)
                     .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
             
    }
}

struct PurpleGradentColorButton_Previews: PreviewProvider {
    static var previews: some View {
        PurpleGradentColorButton(text: "Hello")
    }
}
