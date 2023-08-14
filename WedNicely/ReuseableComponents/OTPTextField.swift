import SwiftUI

struct OTPTextField: View {
    let numberOfFields: Int
    @State private var pinTextValue: [String]
    @FocusState private var onFocus: Int?
    @Binding var allFieldsFilled: Bool // Add a binding variable to track if all fields are filled
    var onFilled: ((String) -> Void)? // Callback closure to get the entered OTP value when all fields are filled

    init(numberOfFields: Int, allFieldsFilled: Binding<Bool>, onFilled: ((String) -> Void)? = nil) {
        self.numberOfFields = numberOfFields
        self._pinTextValue = State(initialValue: Array(repeating: "", count: numberOfFields))
        self._allFieldsFilled = allFieldsFilled
        self.onFilled = onFilled
    }

    var body: some View {
        HStack {
            ForEach(0..<numberOfFields, id: \.self) { index in
                TextField("", text: $pinTextValue[index])
                    .keyboardType(.numberPad)
                    .frame(width: 55, height: 55)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    .multilineTextAlignment(.center)
                    .focused($onFocus, equals: index)
                    .tag(index)
                    .onChange(of: pinTextValue[index]) { newValue in
                        if pinTextValue[index].count > 1 {
                            pinTextValue[index] = String(pinTextValue[index].suffix(1))
                        }

                        if !newValue.isEmpty {
                            if index == numberOfFields - 1 {
                                onFocus = nil
                                allFieldsFilled = true // Set the binding variable to true when all fields are filled
                                checkFilled() // Check if all fields are filled and invoke the callback closure
                            } else {
                                onFocus = (onFocus ?? 0) + 1
                            }
                        } else {
                            onFocus = (onFocus ?? 0) - 1
                            allFieldsFilled = false // Set the binding variable to false if any field is empty
                        }
                    }
            }
        }
        .padding(EdgeInsets(top: 40, leading: 10, bottom: 0, trailing: 10))
    }

    private func checkFilled() {
        let otpValue = pinTextValue.joined()
        onFilled?(otpValue) // Invoke the callback closure with the entered OTP value
    }
}
