//
//  ViewController.swift
//  hangug
//
//  Created by SteveWayne on 1/30/18.
//  Copyright © 2018 aungthuphyo. All rights reserved.
//

import UIKit

class ToDolistViewController: UITableViewController {
    
    var nameArray = ["Lesson1","Lesson2","Lesson3","Lesson4","Lesson5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Mark-> tableView datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        
        return cell
        
    }
    
    //Mark-> TableView delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
        //tableView.setEditing(true, animated: true)//Delete Items
    }

    
}

