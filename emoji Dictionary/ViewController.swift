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
    
    var emojis = ["😂","😊","😡","💩","👰🏽","👫"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    tableView.dataSource = self // providing own datatsoure
        tableView.delegate = self
}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // <-- how many rows should tableview have
        return emojis.count // <-- accessing your emoji variables count.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // <-- what do you want in each tableRow
        print(indexPath.row)
        let cell = UITableViewCell() // <-- constant for each cell/row
        cell.textLabel?.text = emojis[indexPath.row] // <- printing the emoji arrays index path
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! definitionViewController
        defVC.emoji = sender as! String
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

