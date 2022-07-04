//
//  VKView.swift
//  SwiftUI-VK
//
//  Created by Аня on 30.06.2022.
//

import SwiftUI

struct VKViewFreinds: View {
    var body: some View {
        List(0 ..< 5) { item in
            HStack {
                Image(systemName: "person")
                VStack(alignment: .leading)  {
                    Text("Имя пользователя")
                    Text("Написать сообщение")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
        }

    }
}

struct VKView_Previews: PreviewProvider {
    static var previews: some View {
        VKViewFreinds()
    }
}
