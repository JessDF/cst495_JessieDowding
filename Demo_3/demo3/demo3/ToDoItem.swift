//
//  MyToDo.swift
//  demo3
//
//  Created by Jessie Dowding on 11/5/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation

class ToDoItem {
    var title: String
    var done: Bool
    
    public init(title: String) {
        self.title = title
        self.done = false
    }
}
extension ToDoItem {
    public class func getMockData() -> [ToDoItem] {
        return [
            ToDoItem(title: "Sample - 0°F")
        ]
    }
}
