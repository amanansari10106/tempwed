//
//  NextButtonInActive.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 20/07/23.
//

import SwiftUI

struct NextButtonInActive: View {
    var body: some View {
        HStack{
            
            Text(StringConstants.Strings.next)
            
                .font(.system(size: 24))
                .bold()
                .foregroundColor(ColorConstants.Colors.DISABLED_COLOR)
            Image("right_arrow_gray_color").resizable().frame(width: 24,height: 24)
                
        }.frame(width: 130, height: 60)
            .background(
                ColorConstants.Colors.BLUE_COLOR_Light
            )
            .cornerRadius(35)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct NextButtonInActive_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonInActive()
    }
}
