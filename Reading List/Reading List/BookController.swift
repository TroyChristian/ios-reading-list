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
    
   private var readingListURL:URL?{
        let fileManager = FileManager.default
    guard let documentsDir = fileManager.urls(for: . documentDirectory, in: .userDomainMask).first else {return nil}
        return documentsDir.appendingPathComponent("ReadingList.plist")
        
    
}
    func saveToPersistentStore(){
        var bookListEncoder = PropertyListEncoder() 
        
        do {
            let booksData =  try bookListEncoder.encode(books)
            guard let fileURL = readingListURL else {return}
            try booksData.write(to:fileURL)
        } catch {
            print("\(error) encoding the file")
            
        }
        
        
    }
}
