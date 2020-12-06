//
//  Analyse.swift
//  HealthSheet
//
//  Created by Hama on 12/6/20.
//

import Foundation
class Analyse :Codable {
    internal init(_id: String, description: String) {
        self._id = _id
        self.description = description
    }
    
    
    var _id:String
    var description:String

}
