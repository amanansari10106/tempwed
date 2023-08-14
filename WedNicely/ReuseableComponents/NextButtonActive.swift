//
//  NextButtonActive.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 20/07/23.
//NextButtonActive

//
//  RedGradentColorButton.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct NextButtonActive: View {
  
    var body: some View {
        HStack{
            
            Text(StringConstants.Strings.next)
            
                .font(.system(size: 24))
                .bold()
                .foregroundColor(.white)
            Image("right_arrow_icon_white").resizable().frame(width: 24,height: 24)
                
        }.frame(width: 130, height: 60)
            .background(
                LinearGradient(gradient: Gradient(colors: [ColorConstants.Colors.PURPLE_COLOR_Dark,ColorConstants.Colors.PURPLE_COLOR_Light]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(35)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
             
    }
}

struct NextButtonActive_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonActive()
    }
}
