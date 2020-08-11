//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Julia Chang  on 8/10/20.
//  Copyright © 2020 Julia Chang . All rights reserved.
//

import UIKit


class AddToDoViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   @IBAction func addTapped(_ sender: Any) {
    let toDo = ToDo()

    if let titleText = titleTextField.text {
      toDo.name = titleText
      toDo.important = importantSwitch.isOn
    }
    previousVC.toDos.append(toDo)
    previousVC.tableView.reloadData()
    navigationController?.popViewController(animated: true)

}
}


