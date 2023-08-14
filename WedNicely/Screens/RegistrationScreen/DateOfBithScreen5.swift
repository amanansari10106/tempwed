//
//  DateOfBithScreen5.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 06/08/23.
//

import SwiftUI

struct DateOfBithScreen5: View {
    @State private var birthDate = Date()
    @Binding var currentPage: RegistrationPage
    @Binding var progress: Float
    @State private var selectedChips: Set<String> = []
   // @State private var activateButton : Bool = false

    var body: some View {
        VStack{
            HStack{
                Image("birth_date").resizable().frame(width: 60,height: 60)
                Spacer()

            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            HStack{
                Text(StringConstants.Strings.wwhen_is_your_birth_date).font(.system(size: 24))
                    .bold()
                Spacer()

            }.padding(20)
         
                DatePicker("Select a date", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .accentColor(.purple)// Customize the style
                    .labelsHidden()// Hide labels to create a cleaner look
            HStack{
                Spacer()
                if(formattedDate.isEmpty){
                    NextButtonInActive().onTapGesture {
                        
                    }
           
                }else{
                    NextButtonActive().onTapGesture {
                        print("culture and faith page screen")
                        print(formattedDate)
                        progress=0.3
                        currentPage = .communityAndReligionScreen
                        print(currentPage)
                    }
                }
            }.padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            Spacer()

        }
        var formattedDate: String {
             let formatter = DateFormatter()
             formatter.dateFormat = "dd-mm-yyyy"
             return formatter.string(from: birthDate)
         }
    }
}

struct DateOfBithScreen5_Previews: PreviewProvider {
    static var previews: some View {
        DateOfBithScreen5(currentPage: Binding.constant(.firstNameLastNameScreen), progress: Binding.constant(0.33))
    }
}



          //  Spacer()
