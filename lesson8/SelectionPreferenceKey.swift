//
//  Selection.swift
//  lesson8
//
//  Created by Аня on 03.08.2022.
//

import SwiftUI
import Foundation

struct SelectionPreferenceKey: PreferenceKey {
    
    static var defaultValue: Anchor<CGRect>? = nil

    static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
        value = value ?? nextValue()
    }
}
