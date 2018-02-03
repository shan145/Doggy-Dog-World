//
//  RegisterOwner.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/28/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import Foundation

class RegisterOwner {
    let id: Int64?
    var username: String
    var password: String
    var petname: String
    var breed: String
    var age: Int
    var weight: Int
    var activity_level: String
    var specialCond: String
    
    init (id: Int64) {
        self.id = id
        username = ""
        password = ""
        petname = ""
        breed = ""
        age = 0
        weight = 0
        activity_level = ""
        specialCond = ""
    }
    
    init (id: Int64, username: String, password: String, petname: String, breed: String, age: Int, weight: Int, activity_level: String, specialCond: String) {
        self.id = id
        self.username = username
        self.password = password
        self.petname = petname
        self.breed = breed
        self.age = age
        self.weight = weight
        self.activity_level = activity_level
        self.specialCond = specialCond
        
    }
}
