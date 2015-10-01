//
//  TaskManager.swift
//  MyToDo List App
//
//  Created by Mathias Arkayin on 9/30/15.
//  Copyright (c) 2015 Mathias Arkayin. All rights reserved.
//

import UIKit

var taskMgr = TaskManager() // Global Variable!!

struct task {
    var name = "Add Task Name"
    var desc = "Add Task Description"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
    
}
