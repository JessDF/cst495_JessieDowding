//
//  ViewController.swift
//  demo3
//
//  Created by Jessie Dowding on 11/1/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper

class weatherViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    
    @IBOutlet weak var weatherImage: UIImageView!
    
    let weather = WeatherGetter()
    let initalCity: Bool = KeychainWrapper.standard.set("", forKey: "userCity")
    let retrivedCity: String? = KeychainWrapper.standard.string(forKey: "userCity")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if(retrivedCity == ""){
            alertCity()
        }
        print("Retrieved passwork is: \(retrivedCity!)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        dateLabel.text = weather.date
        tempLabel.text = "\(weather.temp)"
        locationLabel.text = weather.location
        weatherLabel.text = weather.weather
    }
    
    func alertCity() {
        // Create an alert
        let alert = UIAlertController(
            title: "New City",
            message: "Type in a City Name",
            preferredStyle: .alert)
        
        // Add a text field to the alert for the new item's title
        alert.addTextField(configurationHandler: nil)
        
        // Add a "cancel" button to the alert. This one doesn't need a handler
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // Add a "OK" button to the alert. The handler calls addNewToDoItem()
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:
            { (_) in
                // Get the title the user inserted, but only if it is not an empty string
                if let title = alert.textFields?[0].text, title.characters.count > 0
                {
                    let saveSuccessful: Bool = KeychainWrapper.standard.set(title, forKey: "userCity")
                    print("Save was successful: \(saveSuccessful)")
                    self.weather.getWeather(city: title){
                        self.updateUI()
                    }
                }
        }))
        
        // Present the alert to the user
        self.present(alert, animated: true, completion: nil)

    }
    
}

