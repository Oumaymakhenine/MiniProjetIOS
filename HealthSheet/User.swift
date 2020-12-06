//
//  User.swift
//  HealthSheet
//
//  Created by Hama on 11/28/20.
//

import Foundation

struct User:Codable {
    static var us = User(username: "x", firstName: "s", lastName: "s", email: "s", password: "s", role: [Role(name: "Doctor")])
   // static var us = "hama"
   var username:String
   var firstName:String
    var lastName:String
    var email:String
    var password:String
   var role:[Role]

}
