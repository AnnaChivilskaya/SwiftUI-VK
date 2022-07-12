//
//  GroupModel.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct GroupModel: Identifiable {
    let id: Int
    let name: String
    let avatargroup: String
}

extension GroupModel: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case avatargroup = "photo_100"
    }
}
