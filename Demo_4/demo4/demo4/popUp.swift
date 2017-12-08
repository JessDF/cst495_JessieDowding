//
//  popUp.swift
//  demo4
//
//  Created by Jessie Dowding on 12/7/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit
class popUp: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
