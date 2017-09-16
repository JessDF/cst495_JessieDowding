//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jessie Dowding on 9/13/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Measurement<UnitTemperature>? {
        
        didSet {
            updateCelsiusLabel();
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Current text: \(textField.text)");
        print("Replacement text: \(string)");
        
        return true;
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter();
        nf.numberStyle = .decimal;
        nf.minimumFractionDigits = 0;
        nf.maximumFractionDigits = 1;
        return nf;
    }();
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius);
        }else {
            return nil;
        }
    };
    
    func updateCelsiusLabel () {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value));
        } else {
            celsiusLabel.text = "???";
        }
    }
    
    @IBAction func farenheitFieldChange(_ textField: UITextField) {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit);
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        updateCelsiusLabel();
    }
    
}
