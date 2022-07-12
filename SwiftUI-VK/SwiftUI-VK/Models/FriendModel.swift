//
//  Models.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI
import Foundation

struct FriendModel: Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let photo: String
    let fullphoto: String
    let section: Int
    var fullName: String { lastName + " " + firstName }
}

extension FriendModel: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_50"
        case fullphoto = "photo_100"
        case sections
    }
}

extension FriendModel: Comparable {
    static func < (lhs: FriendModel, rhs: FriendModel) -> Bool { lhs.lastName < rhs.lastName }
}
