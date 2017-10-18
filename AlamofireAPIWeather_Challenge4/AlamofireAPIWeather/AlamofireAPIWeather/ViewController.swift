//
//  ViewController.swift
//  AlamofireAPIWeather
//
//  Created by Jessie Dowding on 10/16/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let weather = WeatherGetter()
        weather.getWeather(city: "Marina")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

