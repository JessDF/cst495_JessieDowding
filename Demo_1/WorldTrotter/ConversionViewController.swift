//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jessie Dowding on 9/13/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert
import JDOWDINGCOCOA

class ConversionViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    //private var fooRoundedImageView: RoundedUIImageView;
    
   var fahrenheitValue: Measurement<UnitTemperature>? {
        
        didSet {
            updateCelsiusLabel();
        }
    }

    @IBAction func alertBackground(_ sender: Any) {
        let alert = PCLBlurEffectAlert.Controller(title: "Background", message: "Do you want to chang background?", effect: UIBlurEffect(style: .dark), style: .alert);
        alert.show();
        let alertButtn1 = PCLBlurEffectAlertAction(title: "Purple", style: .default){
            _ in
            self.view.backgroundColor = UIColor(red: 227/255, green: 192/255, blue: 249/255, alpha: 1);
        }
        let alertButtn2 = PCLBlurEffectAlert.Action(title: "Original", style: .default){
            _ in
            self.view.backgroundColor = UIColor(red: 245/255, green: 244/255, blue: 241/255, alpha: 1);
        }

        alert.addAction(alertButtn1);
        alert.addAction(alertButtn2);
    }
    @IBAction func callAlert(_ sender: Any) {
        let alert = PCLBlurEffectAlert.Controller(title: "Try Me: Alert", message: "Welcome to my Demo 1 App", effect: UIBlurEffect(style: .dark), style: .alert);
        
        alert.addImageView(with: Assets.image.imgCat);
        alert.show();
        
        let alertButtn = PCLBlurEffectAlert.Action(title: "Cancel", style: .cancel, handler: nil);
        alert.addAction(alertButtn);
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //print("Current text: \(textField.text)");
        //print("Replacement text: \(string)");
        //return true;
        
        let existingTextHasDecimalSearator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        
        if existingTextHasDecimalSearator != nil, replacementTextHasDecimalSeparator != nil {
            return false;
        } else {
            return true;
        }
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
            //celsiusLabel.text = "???"
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        print("ConversionViewController loaded its view.")
        
        updateCelsiusLabel();
    }
    
}
