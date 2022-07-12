//
//  PhotoView.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct PhotoView: View {
    
    var friend: FriendModel
    
    @State var photos = [
    Photo(url: "one"),
    Photo(url: "two"),
    Photo(url: "three"),
    Photo(url: "four"),
    Photo(url: "five")
    ]
    
    var body: some View {
        GeometryReader {  geometryreader in
            let size = geometryreader.size.width / 3
            let rows = [
                GridItem(.flexible(maximum: size), spacing: 0),
                GridItem(.flexible(maximum: size), spacing: 0),
                GridItem(.flexible(maximum: size), spacing: 0)
            ]
            ScrollView(.vertical) {
                Text("\(self.friend.fullName)")
                    .padding()
                    .font(.bold(.system(size: 30))())
                LazyHGrid(rows: rows, spacing: 0) {
                    ForEach(0..<photos.count, id: \.self) { index in
                        Image(photos[index].url)
                                .resizable()
                                .frame(width: size, height: size)
                                .aspectRatio(1, contentMode: .fill)
                              
                              }
                }
                                .frame(width: geometryreader.size.width, height: geometryreader.size.width)
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(friend: FriendModel(id: 222, firstName: "Ева", lastName: "Белая", photo: "1", fullphoto: "1", section: 1))
    }
}
