//
//  User.swift
//  HealthSheet
//
//  Created by Hama on 11/28/20.
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
