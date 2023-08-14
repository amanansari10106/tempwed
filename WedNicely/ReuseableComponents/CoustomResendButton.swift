//
//  CoustomResendButton.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 19/07/23.
//

import SwiftUI

struct CoustomResendButton: View {
    let resedText:String
    let widthOfResendButton :CGFloat?
    let heightOfResendButton :CGFloat?

    var body: some View {
        ZStack{
            Text(resedText)
                .frame(width: widthOfResendButton,height: heightOfResendButton)
                .padding(20)
                .foregroundColor(Color.white)
            
        }.background(ColorConstants.Colors.GRAY_COLOR_LIGHT)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct CoustomResendButton_Previews: PreviewProvider {
    static var previews: some View {
        CoustomResendButton(resedText:"Resend SMS in ",widthOfResendButton: 60, heightOfResendButton: 20)
    }
}
