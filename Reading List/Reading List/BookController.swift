//
//  BookController.swift
//  Reading List
//
//  Created by Lambda_School_Loaner_219 on 11/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
class BookController{
    var books: [Book] = []
    
    var readingListURL:URL?{
        var fileManager = FileManager.default
        var documentsDir = fileManager.urls(for: . documentDirectory, in: .userDomainMask).first
        return documentsDir?.appendingPathComponent("ReadingList.plist")
        
    
}
}
