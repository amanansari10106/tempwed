//
//  CustomProgressBar.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 19/07/23.
//

import SwiftUI
struct CustomProgressViewStyle: ProgressViewStyle {
    var activeColor: Color
    var inActiveColor: Color // Color for the inactive part of the progress bar

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0.0

        return GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(inActiveColor) // Set the color for the inactive part
                    .frame(width: geometry.size.width)

                RoundedCornersShape(cornerRadius: 10, corners: [.topRight, .bottomRight])
                    .foregroundColor(activeColor) // Set the color for the active part
                    .frame(width: geometry.size.width * CGFloat(fractionCompleted))
                    .offset(x: 0, y: -geometry.size.height/2)
            }
        }
    }
}

struct RoundedCornersShape: Shape {
    var cornerRadius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}
