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
    
    /*static func fetchImages(search term:String?, completion: @escaping ([ApiDictionary]?, Error?) -> Void) {
        guard
            let searchTerm = term,
            let encodedSearchTerm = searchTerm.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        else {
            completion(nil, ApiError.badInputs)
            return
        }
    }*/
    func getWeather(city: String) {
        let url = "\(openWeatherMapBaseURL)?APPID=\(openWeatherMapAPIKey)&q=\(city)"
        //let requestQueue = DispatchQueue(label: "com.test.api", qos: .default, attributes: .concurrent)
        
        Alamofire.request(url)
            //method: .get,
            //encoding: JSONEncoding.default)
            .validate()
            .responseJSON{(response) -> Void in
                let result = response.result
                print("Response value \(result)")
                print("Output \(result.value)")
                
            }
            /*.responseJSON(queue: requestQueue) { (respones) -> Void in
                guard response.result.isSuccess else {
                    print("Error while fetching remote rooms: \(response.result.error)")
                    completion(nil)
                    return
                }
                guard let value = response.result.value as? [String: Any], let rows = value["rows"] as? [[String: Any]] else {
                    print("Malformed data recieved")
                    completion(nil)
                    return
                }
                completion(photos, nil)
        }*/
        
    }
}
