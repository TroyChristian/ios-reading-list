//
//  BookDetailViewController.swift
//  Reading List
//
//  Created by Lambda_School_Loaner_219 on 11/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    @IBAction func saveButtonAction(_ sender: Any) {
     
        
        if book != nil {
            updateViews()
        }
        
        if book == nil{
           guard  let newTitle = titleTextLabel.text,
            let newReason = reasonTextView.text
            else { return }
            bookController?.Create(newTitle:newTitle, reason:newReason)
        }
    }
    
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var titleTextLabel: UITextField!
    
    var bookController:BookController?
    var book: Book?
    
    func updateViews(){
        if let selectedBook = book{
        titleTextLabel.text? = selectedBook.title
        reasonTextView.text? = selectedBook.reasonToRead
        self.title = book?.title
        return
        }
        
        self.title = "Add a new book"
        
        
        
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
