//
//  Book.swift
//  Reading List
//
//  Created by Lambda_School_Loaner_219 on 11/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Book: Equatable, Codable {
    var title:String
    var reasonToRead:String
    var hasBeenRead:Bool
    
    init(title:String, reasonToRead:String, hasBeenRead:Bool = false) {
        self.title = title
        self.reasonToRead = reasonToRead
        self.hasBeenRead = hasBeenRead
        
    }
}


