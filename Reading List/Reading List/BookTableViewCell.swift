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
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
