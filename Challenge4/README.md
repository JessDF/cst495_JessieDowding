# Challenge 4 - Web Service and GCD Challenge

### Make an app that:

- Takes users to a blank View Controller that has a TableView showing weather results
- Allows users to add up to 5 cities in a separate Settings View Controller, accessible through a navigation bar button
- Fetches weather data for all cities specified in settings when the user pulls down to refresh or if the table is empty
- This will require using group dispatch features
- Calls the OpenWeatherMap API on a background thread
- Shows toast or an activity indicator while the data is being fetched and processed
- Displays the weather data in the table view, including the weather icon, temperature, wind direction and speed.
- Inform the user if and when reachability is affected
- Optionally use Wrap and Unbox pods for putting data into and getting data out of JSON format

### Hints:
- You will need to take a look at the pods found in my Web Services example code, then check their README.md files for usage.
- You'll need to put the 2 view controllers inside a navigation controller
- Be mindful of the OpenWeatherMap icon...the documents tell you how to construct it from the data passed back
- Check out the functions below for help in converting some of the weather service data (or just use raw results...doesn't matter which)
- Regarding reachability, use the Pod referenced in the example project, BUT reference the Sample project in that repo for how to monitor a specific URL reachability

### Sources
* https://github.com/pNre/OpenWeather/blob/master/OpenWeather/OpenWeather.swift
* http://www.systeen.com/2016/11/24/weather-app-using-swift-3-alamofire-4-xcode-8/
* http://www.globalnerdy.com/2016/04/02/how-to-build-an-ios-weather-app-in-swift-part-1-a-very-bare-bones-weather-app/
* https://www.raywenderlich.com/147086/alamofire-tutorial-getting-started-2
* https://github.com/jasonhenderson/examples-ios/blob/master/WebServices/WebServices/ApiHelper.swift
