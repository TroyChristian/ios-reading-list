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
    var readBooks: [Book] {
        let read = books.filter{$0.hasBeenRead == true}
        return read
    }
    
    var unreadBooks: [Book] {
        let unread = books.filter{$0.hasBeenRead == false}
        return unread 
    }
    
    
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
    
    func loadFromPersistentStore(){
        let fileManager = FileManager.default
        
        guard let fileURL = readingListURL,
            fileManager.fileExists(atPath: fileURL.path) else {return}
        do {
            let  booksData = try Data(contentsOf: fileURL)
            let decoder = PropertyListDecoder()
            books = try decoder.decode([Book].self, from: booksData)
        } catch {
            print("\(error) encountered when loading books. Refrence loadFromPersistentStore line 36 - 45")
            
        }
    }
    
   @discardableResult func Create(newTitle:String, reason:String) -> Book {
        let newBook = Book(title:newTitle, reasonToRead:reason)
        books.append(newBook)
       saveToPersistentStore()
        return newBook
     
        
     }
    
    func Delete(book:Book){
        let name = book.title
        for book in books{
            if book.title == name {
                if let index = books.index(of: book) {
                    books.remove(at: index)
                    saveToPersistentStore()
                }
            }
            
        }
        
    }
    

        
        
        
    
}

