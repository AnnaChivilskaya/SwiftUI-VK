//
//  GroupList.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct GroupList: View {
    
    @State private var group: [GroupModel] = [
    GroupModel(id: 1, name: "IT", avatargroup: "it"),
    GroupModel(id: 2, name: "Новости Сочи", avatargroup: "newssochi"),
    GroupModel(id: 3, name: "Еда", avatargroup: "food.1"),
    GroupModel(id: 4, name: "Кулинария", avatargroup: "food.2"),
    GroupModel(id: 5, name: "Кино", avatargroup: "films")
    ]
    
    var body: some View {
        List(group.sorted(by: { $0.name < $1.name })) { group in
            VKViewFriends(name: group.name, avatar: group.avatargroup)
        }
    }
}

struct GroupList_Previews: PreviewProvider {
    static var previews: some View {
        GroupList()
    }
}
