//
//  MyToDo.swift
//  demo3
//
//  Created by Jessie Dowding on 11/5/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding {
    var title: String
    var done: Bool
    
    public init(title: String) {
        self.title = title
        self.done = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        if let title = aDecoder.decodeObject(forKey: "title") as? String {
            self.title = title
        }
        else {
            return nil
        }
        if aDecoder.containsValue(forKey: "done") {
            self.done = aDecoder.decodeBool(forKey: "done")
        }
        else {
            return nil
        }
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.title, forKey: "Title")
        aCoder.encode(self.done, forKey: "done")
    }
}
