//
//  ContentView.swift
//  lesson8
//
//  Created by Аня on 03.08.2022.
//

import SwiftUI
import Foundation

struct PhotoHeightPreferenceKey: PreferenceKey {

    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

