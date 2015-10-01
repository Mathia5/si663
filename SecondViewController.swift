//
//  SecondViewController.swift
//  MyToDo List App
//
//  Created by Mathias Arkayin on 9/30/15.
//  Copyright (c) 2015 Mathias Arkayin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
    
    @IBAction func buttonAddTask(sender: AnyObject) {
        // println("in buttonAddTask \(txtDesc.text)")
        
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}

