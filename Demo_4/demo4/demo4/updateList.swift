//
//  updateList.swift
//  demo4
//
//  Created by Jessie Dowding on 12/4/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit
import CoreData

class updateList: UIViewController {
    var people: [NSManagedObject] = []
    @IBOutlet weak var textname: UITextField!
    let myIndex: IndexPath
    
    @IBAction func saveEdits(_ sender: Any) {
        self.save(name: textname.text!)
    }
    func save(name: String) {
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Person",
                                                in: managedContext)!
        
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        
        person.setValue(name, forKeyPath: "name")
        
        do {
            try managedContext.save()
            people.append(person)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = people[myIndex]
        textname = person.value(forKeyPath: "name") as? String
    }
}
