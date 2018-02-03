//
//  BreedTypes.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/31/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import Foundation

struct BreedTypes: Codable {
    let status: String
    let message: [String]
    
    private enum CodingKeys: String, CodingKey {
        case status
        case message
    }
}
