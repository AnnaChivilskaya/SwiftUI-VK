//
//  VKViewGroups.swift
//  SwiftUI-VK
//
//  Created by Аня on 04.07.2022.
//

import SwiftUI

struct VKViewGroups: View {
    var body: some View {
        List(0 ..< 5) { item in
            HStack {
                Image(systemName: "person.3.sequence")
                VStack(alignment: .leading)  {
                    Text("Название")
                    Text("Перейти в сообщество")
                        .font(.subheadline)
                        .background(.blue)
                }
            }
        }

    }
}

struct VKViewGroups_Previews: PreviewProvider {
    static var previews: some View {
        VKViewGroups()
    }
}
