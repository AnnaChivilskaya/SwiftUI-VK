//
//  PhotoModel.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct PhotoModel: Codable {
    let sizes: [PhotoModel]
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case sizes
        case id = "id"
    }
}

struct Photo: Codable {
    let type: String?
    let url: String
    
    init(url: String) {
        self.type = nil
        self.url = url
    }
}
