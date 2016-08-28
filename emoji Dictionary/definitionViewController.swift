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
    var emoji = "No Emoji"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😂" {
            definitionLabel.text = "laugh cry"
        
        }
        if emoji == "😊" {
            definitionLabel.text = "Blushing"
        }
        if emoji == "😡" {
            definitionLabel.text = "I'm Upset"
        }
        if emoji == "👰🏽" {
            definitionLabel.text = "Wedding Day!"
        
        }
        if emoji == "💩" {
            definitionLabel.text = "POOP!"
        }
}
}


