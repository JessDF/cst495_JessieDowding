//
//  WeatherGetter.swift
//  AlamofireAPIWeather
//
//  Created by Jessie Dowding on 10/16/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation
import Alamofire

class WeatherGetter {
    private let openWeatherMapBaseURL = "https://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "1f503f7f44c507605f4904ea08bf0986"
    private var _date: Double?
    private var _temp: String?
    private var _location: String?
    private var _weather: String?
    typealias JSONStandard = Dictionary<String, AnyObject>
    
    
    var date: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy"
        return (_date != nil) ? "Today, \(formatter.string(from: date))" : "Date Invalid"
    }
    
    var temp: String {
        return _temp ?? "0 °C"
    }
    
    var location: String {
        return _location ?? "Location Invalid"
    }
    
    var weather: String {
        return _weather ?? "Weather Invalid"
    }
    
    func downloadData(completed: @escaping ()-> ()) {
        let url = "\(openWeatherMapBaseURL)?APPID=\(openWeatherMapAPIKey)&q=Marina"
        
        Alamofire.request(url).responseJSON(completionHandler: {
            response in
            let result = response.result
            
            if let dict = result.value as? JSONStandard, let main = dict["main"] as? JSONStandard, let temp = main["temp"] as? Double, let weatherArray = dict["weather"] as? [JSONStandard], let weather = weatherArray[0]["main"] as? String, let name = dict["name"] as? String, let sys = dict["sys"] as? JSONStandard, let country = sys["country"] as? String, let dt = dict["dt"] as? Double {
                
                self._temp = String(format: "%.0f °F", (temp - 273.15) * 9/5 + 32)
                self._weather = weather
                self._location = "\(name), \(country)"
                self._date = dt
            }
            
            completed()
        })
    }
}
