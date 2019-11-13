//
//  BookTableViewCell.swift
//  Reading List
//
//  Created by Lambda_School_Loaner_219 on 11/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIImageView!
    @IBAction func buttonAction(_ sender: Any) {
        //delegate?.toggleHasBeenRead(forcell: )
    }
    
    var delegate: BookTableViewCellDelegate?
    var book:Book?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateViews() {
        guard let newLabel = book?.title else {return}
        titleLabel.text? = newLabel
        
        
        guard let checked = book?.hasBeenRead else {return}
        if checked {buttonLabel.image = #imageLiteral(resourceName: "checked")}
        
        if checked == false{ buttonLabel.image = #imageLiteral(resourceName: "unchecked")}
        
        
       
        }

}

