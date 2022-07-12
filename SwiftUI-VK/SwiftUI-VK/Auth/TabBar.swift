//
//  TabBar.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct TabBar: View {
    
    @State private var selectionView = 1
    
    private var tabName = ["Новости", "Друзья", "Группы"]
    var body: some View {
        TabView(selection: $selectionView) {
            NewsList()
                .tabItem {
                    Text(tabName[0])
                    Image(systemName: "news")
                } .tag(1)
            FriendList()
                .tabItem {
                    Text(tabName[1])
                    Image(systemName: "")
                } .tag(2)
            GroupList()
                .tabItem {
                    Text(tabName[2])
                    Image(systemName: "")
                } .tag(3)
        } .navigationTitle(tabName[selectionView - 1])
    }
}
