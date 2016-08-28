//
//  ViewController.swift
//  emoji Dictionary
//
//  Created by Adam Libunao on 2016-08-27.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        tableView.dataSource = self // providing own datatsoure
        tableView.delegate = self
        emojis = makeEmojiArray()
}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // <-- how many rows should tableview have
        return emojis.count // <-- accessing your emoji variables count.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // <-- what do you want in each tableRow
        print(indexPath.row)
        let cell = UITableViewCell()// <-- constant for each cell/row
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.race // <- printing the emoji arrays index path
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! definitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1 = Emoji()
        emoji1.birthYeah = 2013
        emoji1.Category = "Cry laugh"
        emoji1.definition = "Cry laugh"
        emoji1.race = "😂"
        
        
        let emoji2 = Emoji()
        emoji2.birthYeah = 2012
        emoji2.Category = "Wedding"
        emoji2.definition = "Weddingg"
        emoji2.race = "👰🏽"
        
        let emoji3 = Emoji()
        emoji3.birthYeah = 2013
        emoji3.Category = "Angry"
        emoji3.definition = "Angry"
        emoji3.race = "😡"
        
        let emoji4 = Emoji()
        emoji4.birthYeah = 2013
        emoji4.Category = "Poo"
        emoji4.definition = "Poo"
        emoji4.race = "💩"
        
        let emoji5 = Emoji()
        emoji5.birthYeah = 2013
        emoji5.Category = "Blushing"
        emoji5.definition = "Blushing"
        emoji5.race = "😊"
        
        let emoji6 = Emoji()
        emoji6.birthYeah = 2013
        emoji6.Category = "in love"
        emoji6.definition = "in love"
        emoji6.race = "👫"
 
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
}

