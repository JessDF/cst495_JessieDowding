//
//  addNew.swift
//  demo4
//
//  Created by Jessie Dowding on 12/6/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit
import CoreData

class addNew: UIViewController {
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var people: [NSManagedObject] = []
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func save(_ sender: Any) {//UIStoryboardSegue
        let text = textField.text ?? ""
        if(!text.isEmpty) {
            saveHandler()
            dismiss(animated: true, completion: nil)
        }
        
    }
    func saveHandler () {
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Person",
                                                in: managedContext)!
        
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        
        person.setValue(textField.text, forKeyPath: "name")
        
        do {
            try managedContext.save()
            people.append(person)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
