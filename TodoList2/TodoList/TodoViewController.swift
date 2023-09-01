//
//  TodoViewController.swift
//  TodoList
//
//  Created by 손영하  on 2023/09/01.
//  
//

import UIKit

protocol TodoViewControllerDelegate: AnyObject {
  func todoViewController(_ vc: TodoViewController, didSaveTodo todo: Todo)
}

class TodoViewController: UIViewController {
  
  @IBOutlet weak var textfield: UITextField!
  var todo: Todo?
  
  weak var delegate: TodoViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    textfield.text = todo?.title
  }
    
  @IBAction func save(_ sender: Any) {
    let todo = Todo(title: textfield.text!)
    delegate?.todoViewController(self, didSaveTodo: todo)
  }
  
}
