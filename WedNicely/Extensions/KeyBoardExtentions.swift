//
//  KeyBoardExtentions.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation
import SwiftUI
import Combine

// this extension is used to make the text field not hide behined the keyboard
//  this fuction is used in login Screen  and more 

extension Publishers {
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
        let willShow = NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { notification -> CGFloat in
                let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
                return keyboardFrame?.height ?? 0
            }
        
        let willHide = NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in CGFloat(0) }
        
        return MergeMany(willShow, willHide)
            .eraseToAnyPublisher()
    }
}
