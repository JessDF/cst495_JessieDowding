//
//  WeatherGetter.swift
//  demo3
//
//  Created by Jessie Dowding on 11/3/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation
import Alamofire
import SwiftKeychainWrapper

class WeatherGetter {
    private let openWeatherMapBaseURL = "https://api.openweathermap.org/data/2.5/weather"
    let apiKey: Bool = KeychainWrapper.standard.set("1f503f7f44c507605f4904ea08bf0986", forKey: "myapi")
    
    func getWeather(city: String) {
        let retrieveAPI: String? = KeychainWrapper.standard.string(forKey: "myapi")
        let url = "\(openWeatherMapBaseURL)?APPID=\(retrieveAPI!)&q=\(city)"
        
        Alamofire.request(url)
            .validate()
            .responseJSON{(response) -> Void in
                let result = response.result
                print("Response value \(result)")
                print("Output \(result.value)")
                
        }
        
    }
}
