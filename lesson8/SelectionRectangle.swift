//
//  Selection.swift
//  lesson8
//
//  Created by Аня on 03.08.2022.
//

import SwiftUI
import Foundation

struct SelectionRectangle: View {
    let anchor: Anchor<CGRect>?
    
    var body: some View {
         GeometryReader { proxy in
             if let rect = self.anchor.map({ proxy[$0] }) {
                 Rectangle()
                     .fill(Color.clear)
                     .border(Color.blue, width: 2)
                     .offset(x: rect.minX, y: rect.minY)
                     .frame(width: rect.width, height: rect.height)
             }
         }
     }
}
