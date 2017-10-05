//
//  ViewController.swift
//  challengeThree
//
//  Created by Jessie Dowding on 10/2/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var severity: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField == type || textField == desc || textField == severity){
            scroll.setContentOffset(CGPoint(x: 0, y:200), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        scroll.setContentOffset(CGPoint(x:0, y:0), animated: true)
    }

}

