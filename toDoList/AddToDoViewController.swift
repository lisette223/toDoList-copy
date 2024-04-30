//
//  ViewController.swift
//  toDoList
//
//  Created by Lisette Antigua on 3/30/23.
//

import UIKit

class AddToDoViewController: UIViewController {
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    var toDoTableViewController:ToDoTableViewController? = nil
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addTapped(_ sender: UIButton) {
        
        let newToDo = ToDo()
        newToDo.priority = prioritySegmentedControl.selectedSegmentIndex
        if let name = nameTextField.text
        {
            newToDo.name = name
        }
        toDoTableViewController?.toDos.append(newToDo)
        toDoTableViewController?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
}

