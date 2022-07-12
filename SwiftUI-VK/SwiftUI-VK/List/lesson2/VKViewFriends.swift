//
//  VKViewFriends.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct VKViewFriends: View {
    
    let name: String
    let avatar: String
    
    var body: some View {
        HStack {
            VKViewAvatar {
                Image(avatar)
            }
            
            Text(name)
                .font(.system(size: 20))
                .padding(.leading, 20)
                .lineLimit(1)
        }
        .padding()
    }
}

struct VKViewFriends_Previews: PreviewProvider {
    static var previews: some View {
        VKViewFriends(name: "Ева Белая", avatar: "1")
    }
}
