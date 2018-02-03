//
//  SqlDB.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/28/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import SQLite
class SqlDB {
    static let instance = SqlDB()
    private let db: Connection?
    private let owners = Table("petowners")
    private let id = Expression<Int64>("id")
    private let username = Expression<String>("username")
    private let password = Expression<String>("password")
    private let petname = Expression<String>("petname")
    private let breed = Expression<String>("breed")
    private let age = Expression<Int>("age")
    private let weight = Expression<Int>("weight")
    private let activity_level = Expression<String>("activityLevel")
    private let specialCond = Expression<String>("specialconditions")
    
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        
        do {
            db = try Connection("\(path)/Stephencelis.sqlite3")
        } catch {
            db = nil
            print ("Unable to open database")
        }
        
        createTable()
    }
    
    func createTable() {
        do {
            try db!.run(owners.create(ifNotExists: true) { table in
                table.column(id, primaryKey: true)
                table.column(username)
                table.column(password)
                table.column(petname)
                table.column(breed)
                table.column(age)
                table.column(weight)
                table.column(activity_level)
                table.column(specialCond)
            })
        } catch {
            print("Unable to create table")
        }
    }
    
    func addOwner(cusername: String, cpass: String, cpetname: String, cbreed: String, c_age: Int, c_weight: Int, cactivity_level: String, c_specialCond: String) -> Int64? {
        do {
            let insert = owners.insert(username <- cusername, password <- cpass, petname <- cpetname, breed <- cbreed,
                                       age <- c_age, weight <- c_weight, activity_level <- cactivity_level, specialCond <- c_specialCond)
            let id = try db!.run(insert)
            
            return id
        } catch {
            print("Insert failed")
            return -1
        }
    }
    
    func getOwners() -> [RegisterOwner] {
        var owners = [RegisterOwner]()
        do {
            for owner in try db!.prepare(self.owners) {
                owners.append(RegisterOwner(
                    id: owner[id],
                    username: owner[username],
                    password: owner[password],
                    petname: owner[petname],
                    breed: owner[breed],
                    age: owner[age],
                    weight: owner[weight],
                    activity_level: owner[activity_level],
                    specialCond: owner[specialCond]))
            }
        } catch {
            print("Select failed")
        }
        
        return owners
    }
}
    
    
