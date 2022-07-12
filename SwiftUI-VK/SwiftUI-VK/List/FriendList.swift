//
//  FriendList.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct FriendList: View {
    
    @State private var friend:  [FriendModel] = [
    FriendModel(id: 123, firstName: "Нина", lastName: "Соколова", photo: "1", fullphoto: "1", section: 0),
    FriendModel(id: 231, firstName: "Роман", lastName: "Юнусов", photo: "2", fullphoto: "4" , section: 1),
    FriendModel(id: 321, firstName: "Олег", lastName: "Соколов", photo: "3", fullphoto: "5", section: 1),
    FriendModel(id: 331, firstName: "Зоя", lastName: "Рожкова", photo: "2", fullphoto: "1", section: 0),
    FriendModel(id: 222, firstName: "Ева", lastName: "Белая", photo: "1", fullphoto: "1", section: 1)
    ]
    
    var body: some View {
    List(friend.sorted(by:  { $0.lastName < $1.lastName})) { friend  in
        NavigationLink(destination: PhotoView(friend: friend)) {
            VKViewFriends(name:  friend.fullName, avatar: friend.photo)
            }
        }
    }
}

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList()
    }
}
