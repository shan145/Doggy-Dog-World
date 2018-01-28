//
//  Tasks.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/28/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class Tasks {
    var name: String
    var photo: UIImage?
    
    
    init?(name: String, photo: UIImage?) {
        if name.isEmpty {
            return nil
        }
        self.name = name
        self.photo = photo
    }
    
}
