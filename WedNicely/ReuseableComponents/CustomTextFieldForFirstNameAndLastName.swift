//
//  CustomTextFieldForFirstNameAndLastName.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 19/07/23.
//

import SwiftUI
import Combine

struct CustomTextFieldForFirstNameAndLastName: View {
    @Binding var name: String
    let hintName:String
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    
                    HStack{
                        TextField("",text:$name,prompt: Text(hintName)
                            .font(.system(size: 24))
                        
                        )
                    }
                }
               
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(ColorConstants.Colors.BLUE_COLOR_Light).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16))
            
           

        }
    }
}

//struct CustomTextFieldForFirstNameAndLastName_Previews: PreviewProvider {
//    @Binding var bindingText: String?
//
//    static var previews: some View {
//        CustomTextFieldForFirstNameAndLastName(name: $bindingText,  hintName: "")
//    }
//}


