//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jessie Dowding on 9/13/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!

    
    @IBAction func farenheitFieldChange(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            celsiusLabel.text = "???"
        }
    }
}
