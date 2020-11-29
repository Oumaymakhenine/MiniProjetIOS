//
//  User.swift
//  HealthSheet

//

import Foundation
struct User:Encodable {
   var username:String
    var firstName:String
    var lastName:String
    var email:String
    var password:String
    var role:Role

}
