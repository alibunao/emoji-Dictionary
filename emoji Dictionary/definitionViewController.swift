//
//  definitionViewController.swift
//  emoji Dictionary
//
//  Created by Adam Libunao on 2016-08-27.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = Emoji()
    
    @IBOutlet weak var CategortLbl: UILabel!
    
    @IBOutlet weak var birthYearLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.race
        birthYearLbl.text = "\(emoji.birthYeah)"
        CategortLbl.text = "Category: \(emoji.Category)"
        definitionLabel.text = "\(emoji.definition)"

}
}


