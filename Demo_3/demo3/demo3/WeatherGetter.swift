//
//  WeatherGetter.swift
//  demo3
//
//  Created by Jessie Dowding on 11/3/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation
import Alamofire

class WeatherGetter {
    private let openWeatherMapBaseURL = "https://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "1f503f7f44c507605f4904ea08bf0986"
    
    func getWeather(city: String) {
        let url = "\(openWeatherMapBaseURL)?APPID=\(openWeatherMapAPIKey)&q=\(city)"
        
        Alamofire.request(url)
            .validate()
            .responseJSON{(response) -> Void in
                let result = response.result
                print("Response value \(result)")
                print("Output \(result.value)")
                
        }
        
    }
}
