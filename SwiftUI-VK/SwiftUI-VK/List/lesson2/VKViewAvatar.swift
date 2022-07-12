//
//  VKViewAvatar.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct VKViewAvatar: View {
    var avatar: Image
    private var size = 45.0
    
    init(@ViewBuilder content: () -> Image) {
        self.avatar = avatar()
    }
    var body: some View {
       avatar
            .resizable()
            .frame(width: size, height: size)
            .clipped()
            .cornerRadius(size / 2)
            .setShadow(color: .blue, radius: 5.0)
            
            
    }
}

struct Radius: ViewModifier {
    let color: Color
    let radius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background()
        Circle()
            .fill(Color.white)
            .shadow(color: color, radius: radius)
    }
}

extension View {
    func setShadow(color: Color, radius: CGFloat) -> some View {
        return self.modifier(Radius(color: color, radius: radius))
    }
}
